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
struct vxfs_inode_info {int dummy; } ;
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_2__ {int /*<<< orphan*/  vsi_stilist; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vxfs_inode_info*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 struct vxfs_inode_info* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct vxfs_inode_info *
FUNC3(struct super_block *sbp, ino_t ino)
{
	struct vxfs_inode_info *vip;

	vip = FUNC2(ino, FUNC1(sbp)->vsi_stilist);
	return FUNC0(vip) ? NULL : vip;
}