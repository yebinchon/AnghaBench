#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fuse_conn {int ctl_ndents; struct dentry** ctl_dentry; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_6__ {TYPE_2__* s_root; } ;
struct TYPE_5__ {int /*<<< orphan*/  d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/ * i_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* fuse_control_sb ; 

void FUNC3(struct fuse_conn *fc)
{
	int i;

	if (!fuse_control_sb)
		return;

	for (i = fc->ctl_ndents - 1; i >= 0; i--) {
		struct dentry *dentry = fc->ctl_dentry[i];
		dentry->d_inode->i_private = NULL;
		FUNC0(dentry);
		FUNC1(dentry);
	}
	FUNC2(fuse_control_sb->s_root->d_inode);
}