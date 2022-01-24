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
typedef  scalar_t__ u32 ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_cpos; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_count; int /*<<< orphan*/  l_next_free_rec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_extent_rec*,struct ocfs2_extent_rec*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,int,int,int,int) ; 
 int FUNC6 (struct ocfs2_extent_rec*) ; 

__attribute__((used)) static void FUNC7(struct ocfs2_extent_list *el,
			      struct ocfs2_extent_rec *insert_rec)
{
	int i, insert_index, next_free, has_empty, num_bytes;
	u32 insert_cpos = FUNC3(insert_rec->e_cpos);
	struct ocfs2_extent_rec *rec;

	next_free = FUNC2(el->l_next_free_rec);
	has_empty = FUNC6(&el->l_recs[0]);

	FUNC0(!next_free);

	/* The tree code before us didn't allow enough room in the leaf. */
	FUNC0(el->l_next_free_rec == el->l_count && !has_empty);

	/*
	 * The easiest way to approach this is to just remove the
	 * empty extent and temporarily decrement next_free.
	 */
	if (has_empty) {
		/*
		 * If next_free was 1 (only an empty extent), this
		 * loop won't execute, which is fine. We still want
		 * the decrement above to happen.
		 */
		for(i = 0; i < (next_free - 1); i++)
			el->l_recs[i] = el->l_recs[i+1];

		next_free--;
	}

	/*
	 * Figure out what the new record index should be.
	 */
	for(i = 0; i < next_free; i++) {
		rec = &el->l_recs[i];

		if (insert_cpos < FUNC3(rec->e_cpos))
			break;
	}
	insert_index = i;

	FUNC5(0, "ins %u: index %d, has_empty %d, next_free %d, count %d\n",
	     insert_cpos, insert_index, has_empty, next_free, FUNC2(el->l_count));

	FUNC0(insert_index < 0);
	FUNC0(insert_index >= FUNC2(el->l_count));
	FUNC0(insert_index > next_free);

	/*
	 * No need to memmove if we're just adding to the tail.
	 */
	if (insert_index != next_free) {
		FUNC0(next_free >= FUNC2(el->l_count));

		num_bytes = next_free - insert_index;
		num_bytes *= sizeof(struct ocfs2_extent_rec);
		FUNC4(&el->l_recs[insert_index + 1],
			&el->l_recs[insert_index],
			num_bytes);
	}

	/*
	 * Either we had an empty extent, and need to re-increment or
	 * there was no empty extent on a non full rightmost leaf node,
	 * in which case we still need to increment.
	 */
	next_free++;
	el->l_next_free_rec = FUNC1(next_free);
	/*
	 * Make sure none of the math above just messed up our tree.
	 */
	FUNC0(FUNC2(el->l_next_free_rec) > FUNC2(el->l_count));

	el->l_recs[insert_index] = *insert_rec;

}