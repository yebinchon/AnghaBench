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
typedef  unsigned int u32 ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_cpos; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_next_free_rec; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ocfs2_extent_rec*) ; 
 unsigned int FUNC3 (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ; 

__attribute__((used)) static int FUNC4(struct ocfs2_extent_list *el, u32 cpos)
{
	int next_free = FUNC0(el->l_next_free_rec);
	unsigned int range;
	struct ocfs2_extent_rec *rec;

	if (next_free == 0)
		return 0;

	rec = &el->l_recs[0];
	if (FUNC2(rec)) {
		/* Empty list. */
		if (next_free == 1)
			return 0;
		rec = &el->l_recs[1];
	}

	range = FUNC1(rec->e_cpos) + FUNC3(el, rec);
	if (cpos >= FUNC1(rec->e_cpos) && cpos < range)
		return 1;
	return 0;
}