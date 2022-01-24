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
struct sysv_dir_entry {int /*<<< orphan*/  inode; } ;
struct page {struct address_space* mapping; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int /*<<< orphan*/  SYSV_DIRSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct address_space*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct page*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int FUNC9 (struct page*) ; 

void FUNC10(struct sysv_dir_entry *de, struct page *page,
	struct inode *inode)
{
	struct address_space *mapping = page->mapping;
	struct inode *dir = mapping->host;
	loff_t pos = FUNC9(page) +
			(char *)de-(char*)FUNC8(page);
	int err;

	FUNC6(page);
	err = FUNC2(NULL, mapping, pos, SYSV_DIRSIZE,
				AOP_FLAG_UNINTERRUPTIBLE, &page, NULL);
	FUNC0(err);
	de->inode = FUNC3(FUNC1(inode->i_sb), inode->i_ino);
	err = FUNC4(page, pos, SYSV_DIRSIZE);
	FUNC5(page);
	dir->i_mtime = dir->i_ctime = CURRENT_TIME_SEC;
	FUNC7(dir);
}