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
struct ext4_sb_info {int /*<<< orphan*/  s_dirtyblocks_counter; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct ext4_sb_info*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct ext4_sb_info *sbi,
			   s64 nblocks, unsigned int flags)
{
	if (FUNC0(sbi, nblocks, flags)) {
		FUNC1(&sbi->s_dirtyblocks_counter, nblocks);
		return 0;
	} else
		return -ENOSPC;
}