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
struct TYPE_3__ {void** i_data; } ;
struct ufs_inode_info {TYPE_1__ i_u1; } ;
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
typedef  int __u32 ;
struct TYPE_4__ {int s_flags; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int UFS_ST_MASK ; 
#define  UFS_ST_SUN 129 
#define  UFS_ST_SUNx86 128 
 void* FUNC1 (struct super_block*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct super_block *sb, struct ufs_inode_info *ufsi, dev_t dev)
{
	__u32 fs32;

	switch (FUNC0(sb)->s_flags & UFS_ST_MASK) {
	case UFS_ST_SUNx86:
	case UFS_ST_SUN:
		fs32 = FUNC3(dev);
		if ((fs32 & 0xffff8000) == 0) {
			fs32 = FUNC2(dev);
		}
		break;

	default:
		fs32 = FUNC2(dev);
		break;
	}
	if ((FUNC0(sb)->s_flags & UFS_ST_MASK) == UFS_ST_SUNx86)
		ufsi->i_u1.i_data[1] = FUNC1(sb, fs32);
	else
		ufsi->i_u1.i_data[0] = FUNC1(sb, fs32);
}