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
struct ubifs_lprops {int flags; } ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 int LPROPS_CAT_MASK ; 
 int LPROPS_UNCAT ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*,struct ubifs_lprops*,int) ; 
 int FUNC1 (struct ubifs_info*,struct ubifs_lprops*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,struct ubifs_lprops*,int) ; 

void FUNC3(struct ubifs_info *c, struct ubifs_lprops *lprops)
{
	int cat = lprops->flags & LPROPS_CAT_MASK;

	if (cat != LPROPS_UNCAT)
		return;
	cat = FUNC1(c, lprops);
	if (cat == LPROPS_UNCAT)
		return;
	FUNC2(c, lprops, LPROPS_UNCAT);
	FUNC0(c, lprops, cat);
}