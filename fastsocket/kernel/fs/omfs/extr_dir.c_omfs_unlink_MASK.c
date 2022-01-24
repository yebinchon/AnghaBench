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
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct dentry*) ; 

__attribute__((used)) static int FUNC3(struct inode *dir, struct dentry *dentry)
{
	int ret;
	struct inode *inode = dentry->d_inode;

	ret = FUNC2(dentry);
	if (ret)
		goto end_unlink;

	FUNC0(inode);
	FUNC1(dir);

end_unlink:
	return ret;
}