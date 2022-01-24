#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nameidata {int /*<<< orphan*/  last_type; int /*<<< orphan*/  path; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_3__ {int (* proc_get_link ) (struct inode*,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {TYPE_1__ op; } ;

/* Variables and functions */
 int EACCES ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  LAST_BIND ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC5(struct dentry *dentry, struct nameidata *nd)
{
	struct inode *inode = dentry->d_inode;
	int error = -EACCES;

	/* We don't need a base pointer in the /proc filesystem */
	FUNC2(&nd->path);

	/* Are we allowed to snoop on the tasks file descriptors? */
	if (!FUNC3(inode))
		goto out;

	error = FUNC1(inode)->op.proc_get_link(inode, &nd->path);
	nd->last_type = LAST_BIND;
out:
	return FUNC0(error);
}