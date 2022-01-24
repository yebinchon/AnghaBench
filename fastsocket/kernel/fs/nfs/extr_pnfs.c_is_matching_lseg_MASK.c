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
struct pnfs_layout_range {scalar_t__ iomode; int length; } ;

/* Variables and functions */
 scalar_t__ IOMODE_RW ; 
 int FUNC0 (struct pnfs_layout_range*,struct pnfs_layout_range*) ; 
 int /*<<< orphan*/  FUNC1 (struct pnfs_layout_range*,struct pnfs_layout_range*) ; 

__attribute__((used)) static int
FUNC2(struct pnfs_layout_range *ls_range,
		 struct pnfs_layout_range *range)
{
	struct pnfs_layout_range range1;

	if ((range->iomode == IOMODE_RW &&
	     ls_range->iomode != IOMODE_RW) ||
	    !FUNC1(ls_range, range))
		return 0;

	/* range1 covers only the first byte in the range */
	range1 = *range;
	range1.length = 1;
	return FUNC0(ls_range, &range1);
}