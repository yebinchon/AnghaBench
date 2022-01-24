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
struct inode {int dummy; } ;
struct dentry {TYPE_1__* d_parent; } ;
struct cgroup {int dummy; } ;
struct TYPE_2__ {struct cgroup* d_fsdata; } ;

/* Variables and functions */
 int S_IFDIR ; 
 int FUNC0 (struct cgroup*,struct dentry*,int) ; 

__attribute__((used)) static int FUNC1(struct inode *dir, struct dentry *dentry, int mode)
{
	struct cgroup *c_parent = dentry->d_parent->d_fsdata;

	/* the vfs holds inode->i_mutex already */
	return FUNC0(c_parent, dentry, mode | S_IFDIR);
}