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
struct inode {TYPE_1__* i_mapping; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  vxfs_aops ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct vxfs_inode_info*) ; 

struct inode *
FUNC2(struct super_block *sbp, struct vxfs_inode_info *vip)
{
	struct inode			*ip = NULL;

	if ((ip = FUNC0(sbp))) {
		FUNC1(ip, vip);
		ip->i_mapping->a_ops = &vxfs_aops;
	}
	return (ip);
}