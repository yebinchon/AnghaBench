#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_18__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_21__ {scalar_t__ search_start; scalar_t__ formatted_node; scalar_t__ inode; TYPE_1__* th; scalar_t__ end; scalar_t__ beg; } ;
typedef  TYPE_2__ reiserfs_blocknr_hint_t ;
struct TYPE_20__ {scalar_t__ displace_new_blocks; struct super_block* t_super; } ;
struct TYPE_19__ {scalar_t__ i_prealloc_block; } ;

/* Variables and functions */
 TYPE_18__* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  (*) (TYPE_2__*),struct super_block*) ; 
 scalar_t__ FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (struct super_block*) ; 
 scalar_t__ FUNC8 (struct super_block*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC19 (struct super_block*,TYPE_2__*) ; 
 scalar_t__ FUNC20 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC21(reiserfs_blocknr_hint_t * hint,
				   int amount_needed)
{
	struct super_block *s = hint->th->t_super;
	int unfm_hint;

	hint->beg = 0;
	hint->end = FUNC1(s) - 1;

	/* This is former border algorithm. Now with tunable border offset */
	if (FUNC3(s))
		FUNC19(s, hint);

#ifdef DISPLACE_NEW_PACKING_LOCALITIES
	/* whenever we create a new directory, we displace it.  At first we will
	   hash for location, later we might look for a moderately empty place for
	   it */
	if (displacing_new_packing_localities(s)
	    && hint->th->displace_new_blocks) {
		displace_new_packing_locality(hint);

		/* we do not continue determine_search_start,
		 * if new packing locality is being displaced */
		return;
	}
#endif

	/* all persons should feel encouraged to add more special cases here and
	 * test them */

	if (FUNC7(s) && !hint->formatted_node
	    && FUNC20(hint)) {
		FUNC5(hint);
		return;
	}

	/* if none of our special cases is relevant, use the left neighbor in the
	   tree order of the new node we are allocating for */
	if (hint->formatted_node && FUNC2(hashed_formatted_nodes, s)) {
		FUNC10(hint);
		return;
	}

	unfm_hint = FUNC9(hint);

	/* Mimic old block allocator behaviour, that is if VFS allowed for preallocation,
	   new blocks are displaced based on directory ID. Also, if suggested search_start
	   is less than last preallocated block, we start searching from it, assuming that
	   HDD dataflow is faster in forward direction */
	if (FUNC2(old_way, s)) {
		if (!hint->formatted_node) {
			if (!FUNC17(s))
				FUNC16(hint);
			else if (!FUNC18(s))
				FUNC15(hint);

			if (hint->inode
			    && hint->search_start <
			    FUNC0(hint->inode)->i_prealloc_block)
				hint->search_start =
				    FUNC0(hint->inode)->i_prealloc_block;
		}
		return;
	}

	/* This is an approach proposed by Hans */
	if (FUNC2(hundredth_slices, s)
	    && !(FUNC7(s) && !hint->formatted_node)) {
		FUNC12(hint);
		return;
	}

	/* old_hashed_relocation only works on unformatted */
	if (!unfm_hint && !hint->formatted_node &&
	    FUNC2(old_hashed_relocation, s)) {
		FUNC15(hint);
	}
	/* new_hashed_relocation works with both formatted/unformatted nodes */
	if ((!unfm_hint || hint->formatted_node) &&
	    FUNC2(new_hashed_relocation, s)) {
		FUNC13(hint);
	}
	/* dirid grouping works only on unformatted nodes */
	if (!unfm_hint && !hint->formatted_node && FUNC2(dirid_groups, s)) {
		FUNC4(hint);
	}
#ifdef DISPLACE_NEW_PACKING_LOCALITIES
	if (hint->formatted_node && TEST_OPTION(dirid_groups, s)) {
		dirid_groups(hint);
	}
#endif

	/* oid grouping works only on unformatted nodes */
	if (!unfm_hint && !hint->formatted_node && FUNC2(oid_groups, s)) {
		FUNC14(hint);
	}
	return;
}