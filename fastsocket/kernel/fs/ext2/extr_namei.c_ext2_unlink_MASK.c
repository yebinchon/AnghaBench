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
struct inode {int /*<<< orphan*/  i_ctime; } ;
struct ext2_dir_entry_2 {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; struct inode* d_inode; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct ext2_dir_entry_2*,struct page*) ; 
 struct ext2_dir_entry_2* FUNC1 (struct inode*,int /*<<< orphan*/ *,struct page**) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

__attribute__((used)) static int FUNC3(struct inode * dir, struct dentry *dentry)
{
	struct inode * inode = dentry->d_inode;
	struct ext2_dir_entry_2 * de;
	struct page * page;
	int err = -ENOENT;

	de = FUNC1 (dir, &dentry->d_name, &page);
	if (!de)
		goto out;

	err = FUNC0 (de, page);
	if (err)
		goto out;

	inode->i_ctime = dir->i_ctime;
	FUNC2(inode);
	err = 0;
out:
	return err;
}