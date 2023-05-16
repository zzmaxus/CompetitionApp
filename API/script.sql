USE [PROG455SP23]
GO
/****** Object:  Table [dbo].[Player1]    Script Date: 5/16/2023 11:58:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Player1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[playerName] [nchar](10) NOT NULL,
	[hp] [int] NOT NULL,
	[atk] [int] NOT NULL,
 CONSTRAINT [PK_Player1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[APIDeleteByID]    Script Date: 5/16/2023 11:58:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[APIDeleteByID]
@id int,
@ReturnValue int OUTPUT
AS

SET @ReturnValue = 0;
BEGIN TRY
        -- Perform the DELETE operation
        DELETE FROM dbo.Player1
        WHERE ID = @id;

        -- If the DELETE operation succeeds, set the return value to 1
        SET @ReturnValue = 1;
    END TRY
    BEGIN CATCH
        -- If an error occurs, do nothing and let the catch block handle it
    END CATCH;
GO
/****** Object:  StoredProcedure [dbo].[APIDeleteByName]    Script Date: 5/16/2023 11:58:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[APIDeleteByName]	
@playerName nchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	DELETE FROM dbo.Player1
	WHERE playerName = @playerName;
END

GO
/****** Object:  StoredProcedure [dbo].[APIGetAll]    Script Date: 5/16/2023 11:58:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[APIGetAll]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM dbo.Player1;
END

GO
/****** Object:  StoredProcedure [dbo].[APIGetByID]    Script Date: 5/16/2023 11:58:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[APIGetByID]
@id int
AS
BEGIN

    -- Insert statements for procedure here
	SELECT * FROM dbo.Player1
	WHERE ID = @id
END

GO
/****** Object:  StoredProcedure [dbo].[APIGetbyName]    Script Date: 5/16/2023 11:58:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[APIGetbyName]
@playerName nchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM dbo.Player1
	WHERE playerName = @playerName;
END

GO
/****** Object:  StoredProcedure [dbo].[APIInsertRecord]    Script Date: 5/16/2023 11:58:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[APIInsertRecord]
@playerName nchar(10),
@hp int,
@atk int,
@ReturnValue int OUTPUT

AS
BEGIN

INSERT INTO dbo.Player1(playerName, hp, atk)
VALUES(@playerName, @hp, @atk);
SET @ReturnValue = 0;
END



GO
/****** Object:  StoredProcedure [dbo].[GetRecordbyName]    Script Date: 5/16/2023 11:58:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetRecordbyName]
@playerName nchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM dbo.Player1
	WHERE playerName = @playerName;
END

GO
