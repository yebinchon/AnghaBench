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
struct minix_sb_info {unsigned int s_dirsize; scalar_t__ s_version; } ;
struct minix_dir_entry {scalar_t__ inode; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_sb; } ;
struct address_space {scalar_t__ host; } ;
struct TYPE_2__ {scalar_t__ inode; } ;
typedef  TYPE_1__ minix3_dirent ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 scalar_t__ MINIX_V3 ; 
 int FUNC0 (int /*<<< orphan*/ *,struct address_space*,int,unsigned int,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct page*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct minix_sb_info* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (struct page*) ; 
 int FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

int FUNC9(struct minix_dir_entry *de, struct page *page)
{
	struct address_space *mapping = page->mapping;
	struct inode *inode = (struct inode*)mapping->host;
	char *kaddr = FUNC6(page);
	loff_t pos = FUNC7(page) + (char*)de - kaddr;
	struct minix_sb_info *sbi = FUNC5(inode->i_sb);
	unsigned len = sbi->s_dirsize;
	int err;

	FUNC3(page);
	err = FUNC0(NULL, mapping, pos, len,
					AOP_FLAG_UNINTERRUPTIBLE, &page, NULL);
	if (err == 0) {
		if (sbi->s_version == MINIX_V3)
			((minix3_dirent *) de)->inode = 0;
		else
			de->inode = 0;
		err = FUNC1(page, pos, len);
	} else {
		FUNC8(page);
	}
	FUNC2(page);
	inode->i_ctime = inode->i_mtime = CURRENT_TIME_SEC;
	FUNC4(inode);
	return err;
}