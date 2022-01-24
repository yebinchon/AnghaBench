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
struct inode {int dummy; } ;
struct exofs_dir_entry {int /*<<< orphan*/  inode_no; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 struct exofs_dir_entry* FUNC0 (struct inode*,struct dentry*,struct page**) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

ino_t FUNC3(struct inode *dir, struct dentry *dentry)
{
	ino_t res = 0;
	struct exofs_dir_entry *de;
	struct page *page;

	de = FUNC0(dir, dentry, &page);
	if (de) {
		res = FUNC2(de->inode_no);
		FUNC1(page);
	}
	return res;
}