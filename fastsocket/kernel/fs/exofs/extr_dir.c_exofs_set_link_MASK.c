#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct page {int /*<<< orphan*/  mapping; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; } ;
struct exofs_dir_entry {int /*<<< orphan*/  inode_no; int /*<<< orphan*/  rec_len; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct page*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct exofs_dir_entry*,struct inode*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 int FUNC11 (struct page*) ; 

int FUNC12(struct inode *dir, struct exofs_dir_entry *de,
			struct page *page, struct inode *inode)
{
	loff_t pos = FUNC11(page) +
			(char *) de - (char *) FUNC10(page);
	unsigned len = FUNC6(de->rec_len);
	int err;

	FUNC8(page);
	err = FUNC5(NULL, page->mapping, pos, len,
				AOP_FLAG_UNINTERRUPTIBLE, &page, NULL);
	if (err)
		FUNC0("exofs_set_link: exofs_write_begin FAILD => %d\n",
			  err);

	de->inode_no = FUNC1(inode->i_ino);
	FUNC4(de, inode);
	if (FUNC7(!err))
		err = FUNC2(page, pos, len);
	FUNC3(page);
	dir->i_mtime = dir->i_ctime = CURRENT_TIME;
	FUNC9(dir);
	return err;
}