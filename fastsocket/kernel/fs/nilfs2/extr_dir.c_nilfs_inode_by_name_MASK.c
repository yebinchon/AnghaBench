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
struct page {int dummy; } ;
struct nilfs_dir_entry {int /*<<< orphan*/  inode; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nilfs_dir_entry* FUNC2 (struct inode*,struct dentry*,struct page**) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

ino_t FUNC4(struct inode *dir, struct dentry *dentry)
{
	ino_t res = 0;
	struct nilfs_dir_entry *de;
	struct page *page;

	de = FUNC2(dir, dentry, &page);
	if (de) {
		res = FUNC1(de->inode);
		FUNC0(page);
		FUNC3(page);
	}
	return res;
}