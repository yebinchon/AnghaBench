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
struct nilfs_cpinfo {void* ci_next; void* ci_blocks_count; void* ci_inodes_count; void* ci_nblk_inc; void* ci_create; void* ci_cno; int /*<<< orphan*/  ci_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  ssl_next; } ;
struct nilfs_checkpoint {TYPE_1__ cp_snapshot_list; int /*<<< orphan*/  cp_blocks_count; int /*<<< orphan*/  cp_inodes_count; int /*<<< orphan*/  cp_nblk_inc; int /*<<< orphan*/  cp_create; int /*<<< orphan*/  cp_cno; int /*<<< orphan*/  cp_flags; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct inode *cpfile,
					      struct nilfs_checkpoint *cp,
					      struct nilfs_cpinfo *ci)
{
	ci->ci_flags = FUNC0(cp->cp_flags);
	ci->ci_cno = FUNC1(cp->cp_cno);
	ci->ci_create = FUNC1(cp->cp_create);
	ci->ci_nblk_inc = FUNC1(cp->cp_nblk_inc);
	ci->ci_inodes_count = FUNC1(cp->cp_inodes_count);
	ci->ci_blocks_count = FUNC1(cp->cp_blocks_count);
	ci->ci_next = FUNC1(cp->cp_snapshot_list.ssl_next);
}