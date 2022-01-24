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
struct minix_dir_entry {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct minix_dir_entry*,struct page*) ; 
 struct minix_dir_entry* FUNC2 (struct dentry*,struct page**) ; 

__attribute__((used)) static int FUNC3(struct inode * dir, struct dentry *dentry)
{
	int err = -ENOENT;
	struct inode * inode = dentry->d_inode;
	struct page * page;
	struct minix_dir_entry * de;

	de = FUNC2(dentry, &page);
	if (!de)
		goto end_unlink;

	err = FUNC1(de, page);
	if (err)
		goto end_unlink;

	inode->i_ctime = dir->i_ctime;
	FUNC0(inode);
end_unlink:
	return err;
}