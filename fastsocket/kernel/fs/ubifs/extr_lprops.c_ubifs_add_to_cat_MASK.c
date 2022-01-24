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
struct ubifs_lprops {int flags; int /*<<< orphan*/  list; } ;
struct ubifs_info {int freeable_cnt; int /*<<< orphan*/  frdi_idx_list; int /*<<< orphan*/  freeable_list; int /*<<< orphan*/  empty_list; int /*<<< orphan*/  uncat_list; } ;

/* Variables and functions */
 int LPROPS_CAT_MASK ; 
#define  LPROPS_DIRTY 134 
#define  LPROPS_DIRTY_IDX 133 
#define  LPROPS_EMPTY 132 
#define  LPROPS_FRDI_IDX 131 
#define  LPROPS_FREE 130 
#define  LPROPS_FREEABLE 129 
#define  LPROPS_UNCAT 128 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*,struct ubifs_lprops*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct ubifs_info *c, struct ubifs_lprops *lprops,
		      int cat)
{
	switch (cat) {
	case LPROPS_DIRTY:
	case LPROPS_DIRTY_IDX:
	case LPROPS_FREE:
		if (FUNC0(c, lprops, cat))
			break;
		/* No more room on heap so make it un-categorized */
		cat = LPROPS_UNCAT;
		/* Fall through */
	case LPROPS_UNCAT:
		FUNC1(&lprops->list, &c->uncat_list);
		break;
	case LPROPS_EMPTY:
		FUNC1(&lprops->list, &c->empty_list);
		break;
	case LPROPS_FREEABLE:
		FUNC1(&lprops->list, &c->freeable_list);
		c->freeable_cnt += 1;
		break;
	case LPROPS_FRDI_IDX:
		FUNC1(&lprops->list, &c->frdi_idx_list);
		break;
	default:
		FUNC2(0);
	}
	lprops->flags &= ~LPROPS_CAT_MASK;
	lprops->flags |= cat;
}