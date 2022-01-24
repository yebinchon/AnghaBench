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
struct ext4_group_info {unsigned int bb_free; unsigned int bb_fragments; int /*<<< orphan*/  bb_largest_free_order; } ;
struct TYPE_2__ {unsigned int fe_len; } ;
struct ext4_allocation_context {int ac_flags; TYPE_1__ ac_g_ex; int /*<<< orphan*/  ac_2order; int /*<<< orphan*/  ac_sb; } ;
typedef  int ext4_group_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EXT4_FLEX_SIZE_DIR_ALLOC_SCHEME ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_group_info*) ; 
 int EXT4_MB_HINT_DATA ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct ext4_group_info* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ext4_allocation_context *ac,
				ext4_group_t group, int cr)
{
	unsigned free, fragments;
	int flex_size = FUNC4(FUNC3(ac->ac_sb));
	struct ext4_group_info *grp = FUNC5(ac->ac_sb, group);

	FUNC1(cr < 0 || cr >= 4);

	/* We only do this if the grp has never been initialized */
	if (FUNC7(FUNC2(grp))) {
		int ret = FUNC6(ac->ac_sb, group);
		if (ret)
			return 0;
	}

	free = grp->bb_free;
	fragments = grp->bb_fragments;
	if (free == 0)
		return 0;
	if (fragments == 0)
		return 0;

	switch (cr) {
	case 0:
		FUNC1(ac->ac_2order == 0);

		if (grp->bb_largest_free_order < ac->ac_2order)
			return 0;

		/* Avoid using the first bg of a flexgroup for data files */
		if ((ac->ac_flags & EXT4_MB_HINT_DATA) &&
		    (flex_size >= EXT4_FLEX_SIZE_DIR_ALLOC_SCHEME) &&
		    ((group % flex_size) == 0))
			return 0;

		return 1;
	case 1:
		if ((free / fragments) >= ac->ac_g_ex.fe_len)
			return 1;
		break;
	case 2:
		if (free >= ac->ac_g_ex.fe_len)
			return 1;
		break;
	case 3:
		return 1;
	default:
		FUNC0();
	}

	return 0;
}