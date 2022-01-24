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
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 int LPROPS_CAT_MASK ; 
#define  LPROPS_DIRTY 134 
#define  LPROPS_DIRTY_IDX 133 
#define  LPROPS_EMPTY 132 
#define  LPROPS_FRDI_IDX 131 
#define  LPROPS_FREE 130 
#define  LPROPS_FREEABLE 129 
#define  LPROPS_UNCAT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,struct ubifs_lprops*,struct ubifs_lprops*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct ubifs_info *c, struct ubifs_lprops *old_lprops,
		       struct ubifs_lprops *new_lprops)
{
	int cat;

	cat = new_lprops->flags & LPROPS_CAT_MASK;
	switch (cat) {
	case LPROPS_DIRTY:
	case LPROPS_DIRTY_IDX:
	case LPROPS_FREE:
		FUNC1(c, old_lprops, new_lprops, cat);
		break;
	case LPROPS_UNCAT:
	case LPROPS_EMPTY:
	case LPROPS_FREEABLE:
	case LPROPS_FRDI_IDX:
		FUNC0(&old_lprops->list, &new_lprops->list);
		break;
	default:
		FUNC2(0);
	}
}