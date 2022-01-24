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
struct TYPE_2__ {int /*<<< orphan*/  vi_immed; } ;
struct vxfs_inode_info {TYPE_1__ vii_immed; } ;
struct nameidata {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 struct vxfs_inode_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC2(struct dentry *dp, struct nameidata *np)
{
	struct vxfs_inode_info		*vip = FUNC0(dp->d_inode);
	FUNC1(np, vip->vii_immed.vi_immed);
	return NULL;
}