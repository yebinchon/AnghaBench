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
struct sysv_dir_entry {scalar_t__ inode; } ;
struct page {struct address_space* mapping; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; } ;
struct address_space {scalar_t__ host; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int /*<<< orphan*/  SYSV_DIRSIZE ; 
 int FUNC1 (int /*<<< orphan*/ *,struct address_space*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct page*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int FUNC7 (struct page*) ; 

int FUNC8(struct sysv_dir_entry *de, struct page *page)
{
	struct address_space *mapping = page->mapping;
	struct inode *inode = (struct inode*)mapping->host;
	char *kaddr = (char*)FUNC6(page);
	loff_t pos = FUNC7(page) + (char *)de - kaddr;
	int err;

	FUNC4(page);
	err = FUNC1(NULL, mapping, pos, SYSV_DIRSIZE,
				AOP_FLAG_UNINTERRUPTIBLE, &page, NULL);
	FUNC0(err);
	de->inode = 0;
	err = FUNC2(page, pos, SYSV_DIRSIZE);
	FUNC3(page);
	inode->i_ctime = inode->i_mtime = CURRENT_TIME_SEC;
	FUNC5(inode);
	return err;
}