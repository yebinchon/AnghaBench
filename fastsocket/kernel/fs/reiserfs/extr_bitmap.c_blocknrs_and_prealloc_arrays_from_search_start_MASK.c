#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_13__ {int preallocate; int prealloc_size; TYPE_2__* inode; int /*<<< orphan*/  formatted_node; TYPE_5__* th; scalar_t__ beg; scalar_t__ search_start; } ;
typedef  TYPE_1__ reiserfs_blocknr_hint_t ;
typedef  scalar_t__ b_blocknr_t ;
struct TYPE_15__ {struct super_block* t_super; } ;
struct TYPE_14__ {int /*<<< orphan*/  i_uid; } ;
struct TYPE_12__ {int i_prealloc_count; } ;

/* Variables and functions */
 int CARRY_ON ; 
 int NO_DISK_SPACE ; 
 int QUOTA_EXCEEDED ; 
 int /*<<< orphan*/  REISERFS_DEBUG_CODE ; 
 TYPE_10__* FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 int FUNC2 (TYPE_1__*,scalar_t__*,scalar_t__,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_2__*,scalar_t__,int) ; 
 int FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int FUNC8 (TYPE_2__*,int) ; 

__attribute__((used)) static inline int FUNC9
    (reiserfs_blocknr_hint_t * hint, b_blocknr_t * new_blocknrs,
     int amount_needed) {
	struct super_block *s = hint->th->t_super;
	b_blocknr_t start = hint->search_start;
	b_blocknr_t finish = FUNC1(s) - 1;
	int passno = 0;
	int nr_allocated = 0;

	FUNC3(hint);
	if (!hint->formatted_node) {
		int quota_ret;
#ifdef REISERQUOTA_DEBUG
		reiserfs_debug(s, REISERFS_DEBUG_CODE,
			       "reiserquota: allocating %d blocks id=%u",
			       amount_needed, hint->inode->i_uid);
#endif
		quota_ret =
		    FUNC6(hint->inode, amount_needed);
		if (quota_ret)	/* Quota exceeded? */
			return QUOTA_EXCEEDED;
		if (hint->preallocate && hint->prealloc_size) {
#ifdef REISERQUOTA_DEBUG
			reiserfs_debug(s, REISERFS_DEBUG_CODE,
				       "reiserquota: allocating (prealloc) %d blocks id=%u",
				       hint->prealloc_size, hint->inode->i_uid);
#endif
			quota_ret = FUNC8(hint->inode,
							 hint->prealloc_size);
			if (quota_ret)
				hint->preallocate = hint->prealloc_size = 0;
		}
		/* for unformatted nodes, force large allocations */
	}

	do {
		switch (passno++) {
		case 0:	/* Search from hint->search_start to end of disk */
			start = hint->search_start;
			finish = FUNC1(s) - 1;
			break;
		case 1:	/* Search from hint->beg to hint->search_start */
			start = hint->beg;
			finish = hint->search_start;
			break;
		case 2:	/* Last chance: Search from 0 to hint->beg */
			start = 0;
			finish = hint->beg;
			break;
		default:	/* We've tried searching everywhere, not enough space */
			/* Free the blocks */
			if (!hint->formatted_node) {
#ifdef REISERQUOTA_DEBUG
				reiserfs_debug(s, REISERFS_DEBUG_CODE,
					       "reiserquota: freeing (nospace) %d blocks id=%u",
					       amount_needed +
					       hint->prealloc_size -
					       nr_allocated,
					       hint->inode->i_uid);
#endif
				/* Free not allocated blocks */
				FUNC7(hint->inode,
					amount_needed + hint->prealloc_size -
					nr_allocated);
			}
			while (nr_allocated--)
				FUNC5(hint->th, hint->inode,
						    new_blocknrs[nr_allocated],
						    !hint->formatted_node);

			return NO_DISK_SPACE;
		}
	} while ((nr_allocated += FUNC2(hint,
								 new_blocknrs +
								 nr_allocated,
								 start, finish,
								 1,
								 amount_needed -
								 nr_allocated,
								 hint->
								 prealloc_size))
		 < amount_needed);
	if (!hint->formatted_node &&
	    amount_needed + hint->prealloc_size >
	    nr_allocated + FUNC0(hint->inode)->i_prealloc_count) {
		/* Some of preallocation blocks were not allocated */
#ifdef REISERQUOTA_DEBUG
		reiserfs_debug(s, REISERFS_DEBUG_CODE,
			       "reiserquota: freeing (failed prealloc) %d blocks id=%u",
			       amount_needed + hint->prealloc_size -
			       nr_allocated -
			       REISERFS_I(hint->inode)->i_prealloc_count,
			       hint->inode->i_uid);
#endif
		FUNC7(hint->inode, amount_needed +
					 hint->prealloc_size - nr_allocated -
					 FUNC0(hint->inode)->
					 i_prealloc_count);
	}

	return CARRY_ON;
}