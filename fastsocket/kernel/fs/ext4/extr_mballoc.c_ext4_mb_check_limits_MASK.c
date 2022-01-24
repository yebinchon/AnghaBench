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
struct ext4_sb_info {scalar_t__ s_mb_max_to_scan; scalar_t__ s_mb_min_to_scan; } ;
struct ext4_free_extent {int fe_len; scalar_t__ fe_group; int /*<<< orphan*/  fe_start; } ;
struct ext4_buddy {scalar_t__ bd_group; } ;
struct ext4_allocation_context {scalar_t__ ac_status; scalar_t__ ac_found; int ac_flags; struct ext4_free_extent ac_g_ex; struct ext4_free_extent ac_b_ex; int /*<<< orphan*/  ac_sb; } ;

/* Variables and functions */
 scalar_t__ AC_STATUS_BREAK ; 
 scalar_t__ AC_STATUS_FOUND ; 
 int EXT4_MB_HINT_FIRST ; 
 struct ext4_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_allocation_context*,struct ext4_buddy*) ; 
 int FUNC2 (struct ext4_buddy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ext4_free_extent*) ; 

__attribute__((used)) static void FUNC3(struct ext4_allocation_context *ac,
					struct ext4_buddy *e4b,
					int finish_group)
{
	struct ext4_sb_info *sbi = FUNC0(ac->ac_sb);
	struct ext4_free_extent *bex = &ac->ac_b_ex;
	struct ext4_free_extent *gex = &ac->ac_g_ex;
	struct ext4_free_extent ex;
	int max;

	if (ac->ac_status == AC_STATUS_FOUND)
		return;
	/*
	 * We don't want to scan for a whole year
	 */
	if (ac->ac_found > sbi->s_mb_max_to_scan &&
			!(ac->ac_flags & EXT4_MB_HINT_FIRST)) {
		ac->ac_status = AC_STATUS_BREAK;
		return;
	}

	/*
	 * Haven't found good chunk so far, let's continue
	 */
	if (bex->fe_len < gex->fe_len)
		return;

	if ((finish_group || ac->ac_found > sbi->s_mb_min_to_scan)
			&& bex->fe_group == e4b->bd_group) {
		/* recheck chunk's availability - we don't know
		 * when it was found (within this lock-unlock
		 * period or not) */
		max = FUNC2(e4b, 0, bex->fe_start, gex->fe_len, &ex);
		if (max >= gex->fe_len) {
			FUNC1(ac, e4b);
			return;
		}
	}
}