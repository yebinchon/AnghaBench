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
struct nilfs_super_block {int dummy; } ;
struct nilfs_sb_info {int s_mount_opt; } ;

/* Variables and functions */
 int NILFS_MOUNT_BARRIER ; 
 int NILFS_MOUNT_ERRORS_CONT ; 

__attribute__((used)) static inline void
FUNC0(struct nilfs_sb_info *sbi,
			  struct nilfs_super_block *sbp)
{
	sbi->s_mount_opt =
		NILFS_MOUNT_ERRORS_CONT | NILFS_MOUNT_BARRIER;
}