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
struct smb_sb_info {TYPE_1__* ops; } ;
struct page {scalar_t__ index; } ;
struct dentry {TYPE_2__* d_inode; } ;
typedef  int loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_atime; } ;
struct TYPE_3__ {int (* read ) (TYPE_2__*,int,unsigned int,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  SMB_O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 char* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 struct smb_sb_info* FUNC8 (struct dentry*) ; 
 unsigned int FUNC9 (struct smb_sb_info*) ; 
 int FUNC10 (struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,int,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

__attribute__((used)) static int
FUNC13(struct dentry *dentry, struct page *page)
{
	char *buffer = FUNC5(page);
	loff_t offset = (loff_t)page->index << PAGE_CACHE_SHIFT;
	struct smb_sb_info *server = FUNC8(dentry);
	unsigned int rsize = FUNC9(server);
	int count = PAGE_SIZE;
	int result;

	FUNC2("file %s/%s, count=%d@%Ld, rsize=%d\n",
		FUNC0(dentry), count, offset, rsize);

	result = FUNC10(dentry, SMB_O_RDONLY);
	if (result < 0)
		goto io_error;

	do {
		if (count < rsize)
			rsize = count;

		result = server->ops->read(dentry->d_inode,offset,rsize,buffer);
		if (result < 0)
			goto io_error;

		count -= result;
		offset += result;
		buffer += result;
		dentry->d_inode->i_atime =
			FUNC3(dentry->d_inode->i_sb);
		if (result < rsize)
			break;
	} while (count);

	FUNC7(buffer, 0, count);
	FUNC4(page);
	FUNC1(page);
	result = 0;

io_error:
	FUNC6(page);
	FUNC12(page);
	return result;
}