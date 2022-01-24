#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {struct address_space* mapping; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; TYPE_1__* i_sb; } ;
struct exofs_sb_info {int /*<<< orphan*/  s_numfiles; } ;
struct exofs_dir_entry {scalar_t__ rec_len; scalar_t__ inode_no; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct exofs_sb_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int FUNC2 (struct inode*) ; 
 int FUNC3 (struct page*,scalar_t__,unsigned int) ; 
 struct exofs_dir_entry* FUNC4 (struct exofs_dir_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct address_space*,scalar_t__,unsigned int,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 char* FUNC11 (struct page*) ; 
 scalar_t__ FUNC12 (struct page*) ; 

int FUNC13(struct exofs_dir_entry *dir, struct page *page)
{
	struct address_space *mapping = page->mapping;
	struct inode *inode = mapping->host;
	struct exofs_sb_info *sbi = inode->i_sb->s_fs_info;
	char *kaddr = FUNC11(page);
	unsigned from = ((char *)dir - kaddr) & ~(FUNC2(inode)-1);
	unsigned to = ((char *)dir - kaddr) + FUNC7(dir->rec_len);
	loff_t pos;
	struct exofs_dir_entry *pde = NULL;
	struct exofs_dir_entry *de = (struct exofs_dir_entry *) (kaddr + from);
	int err;

	while (de < dir) {
		if (de->rec_len == 0) {
			FUNC0("ERROR: exofs_delete_entry:"
				"zero-length directory entry");
			err = -EIO;
			goto out;
		}
		pde = de;
		de = FUNC4(de);
	}
	if (pde)
		from = (char *)pde - (char *)FUNC11(page);
	pos = FUNC12(page) + from;
	FUNC9(page);
	err = FUNC6(NULL, page->mapping, pos, to - from, 0,
							&page, NULL);
	if (err)
		FUNC0("exofs_delete_entry: exofs_write_begin FAILD => %d\n",
			  err);
	if (pde)
		pde->rec_len = FUNC1(to - from);
	dir->inode_no = 0;
	if (FUNC8(!err))
		err = FUNC3(page, pos, to - from);
	inode->i_ctime = inode->i_mtime = CURRENT_TIME;
	FUNC10(inode);
	sbi->s_numfiles--;
out:
	FUNC5(page);
	return err;
}