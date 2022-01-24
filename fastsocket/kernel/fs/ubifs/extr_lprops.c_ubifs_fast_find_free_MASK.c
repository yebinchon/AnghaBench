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
struct ubifs_lpt_heap {scalar_t__ cnt; struct ubifs_lprops const** arr; } ;
typedef  struct ubifs_lprops {int flags; } const ubifs_lprops ;
struct ubifs_info {struct ubifs_lpt_heap* lpt_heap; int /*<<< orphan*/  lp_mutex; } ;

/* Variables and functions */
 int LPROPS_FREE ; 
 int LPROPS_INDEX ; 
 int LPROPS_TAKEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

const struct ubifs_lprops *FUNC2(struct ubifs_info *c)
{
	struct ubifs_lprops *lprops;
	struct ubifs_lpt_heap *heap;

	FUNC1(FUNC0(&c->lp_mutex));

	heap = &c->lpt_heap[LPROPS_FREE - 1];
	if (heap->cnt == 0)
		return NULL;

	lprops = heap->arr[0];
	FUNC1(!(lprops->flags & LPROPS_TAKEN));
	FUNC1(!(lprops->flags & LPROPS_INDEX));
	return lprops;
}