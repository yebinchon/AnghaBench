#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  scalar_t__ __le32 ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  file_handle; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NCPI_KLUDGE_SYMLINK ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int NCP_MAX_SYMLINK_SIZE ; 
 int NCP_MIN_SYMLINK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ NCP_SYMLINK_MAGIC0 ; 
 scalar_t__ NCP_SYMLINK_MAGIC1 ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int*) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 

__attribute__((used)) static int FUNC14(struct file *file, struct page *page)
{
	struct inode *inode = page->mapping->host;
	int error, length, len;
	char *link, *rawlink;
	char *buf = FUNC6(page);

	error = -ENOMEM;
	rawlink = FUNC5(NCP_MAX_SYMLINK_SIZE, GFP_KERNEL);
	if (!rawlink)
		goto fail;

	if (FUNC10(inode,O_RDONLY))
		goto failEIO;

	error=FUNC11(FUNC1(inode),FUNC0(inode)->file_handle,
                         0,NCP_MAX_SYMLINK_SIZE,rawlink,&length);

	FUNC8(inode);
	/* Close file handle if no other users... */
	FUNC9(inode);
	if (error)
		goto failEIO;

	if (FUNC0(inode)->flags & NCPI_KLUDGE_SYMLINK) {
		if (length<NCP_MIN_SYMLINK_SIZE || 
		    ((__le32 *)rawlink)[0]!=NCP_SYMLINK_MAGIC0 ||
		    ((__le32 *)rawlink)[1]!=NCP_SYMLINK_MAGIC1)
		    	goto failEIO;
		link = rawlink + 8;
		length -= 8;
	} else {
		link = rawlink;
	}

	len = NCP_MAX_SYMLINK_SIZE;
	error = FUNC12(FUNC1(inode), buf, &len, link, length, 0);
	FUNC4(rawlink);
	if (error)
		goto fail;
	FUNC3(page);
	FUNC7(page);
	FUNC13(page);
	return 0;

failEIO:
	error = -EIO;
	FUNC4(rawlink);
fail:
	FUNC2(page);
	FUNC7(page);
	FUNC13(page);
	return error;
}