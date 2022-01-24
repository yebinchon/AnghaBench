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
struct ext4_free_extent {scalar_t__ fe_len; scalar_t__ fe_start; } ;
struct ext4_buddy {int dummy; } ;
struct ext4_allocation_context {scalar_t__ ac_status; int ac_flags; int /*<<< orphan*/  ac_found; int /*<<< orphan*/  ac_sb; struct ext4_free_extent ac_g_ex; struct ext4_free_extent ac_b_ex; } ;

/* Variables and functions */
 scalar_t__ AC_STATUS_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int EXT4_MB_HINT_FIRST ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_allocation_context*,struct ext4_buddy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ext4_allocation_context*,struct ext4_buddy*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct ext4_allocation_context *ac,
					struct ext4_free_extent *ex,
					struct ext4_buddy *e4b)
{
	struct ext4_free_extent *bex = &ac->ac_b_ex;
	struct ext4_free_extent *gex = &ac->ac_g_ex;

	FUNC0(ex->fe_len <= 0);
	FUNC0(ex->fe_len > FUNC1(ac->ac_sb));
	FUNC0(ex->fe_start >= FUNC1(ac->ac_sb));
	FUNC0(ac->ac_status != AC_STATUS_CONTINUE);

	ac->ac_found++;

	/*
	 * The special case - take what you catch first
	 */
	if (FUNC4(ac->ac_flags & EXT4_MB_HINT_FIRST)) {
		*bex = *ex;
		FUNC3(ac, e4b);
		return;
	}

	/*
	 * Let's check whether the chuck is good enough
	 */
	if (ex->fe_len == gex->fe_len) {
		*bex = *ex;
		FUNC3(ac, e4b);
		return;
	}

	/*
	 * If this is first found extent, just store it in the context
	 */
	if (bex->fe_len == 0) {
		*bex = *ex;
		return;
	}

	/*
	 * If new found extent is better, store it in the context
	 */
	if (bex->fe_len < gex->fe_len) {
		/* if the request isn't satisfied, any found extent
		 * larger than previous best one is better */
		if (ex->fe_len > bex->fe_len)
			*bex = *ex;
	} else if (ex->fe_len > gex->fe_len) {
		/* if the request is satisfied, then we try to find
		 * an extent that still satisfy the request, but is
		 * smaller than previous one */
		if (ex->fe_len < bex->fe_len)
			*bex = *ex;
	}

	FUNC2(ac, e4b, 0);
}