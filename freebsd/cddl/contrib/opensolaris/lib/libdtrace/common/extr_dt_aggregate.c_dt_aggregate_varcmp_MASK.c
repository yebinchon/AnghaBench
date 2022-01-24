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
typedef  scalar_t__ dtrace_aggvarid_t ;
typedef  int /*<<< orphan*/  dt_ahashent_t ;

/* Variables and functions */
 int DT_GREATERTHAN ; 
 int DT_LESSTHAN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(const void *lhs, const void *rhs)
{
	dt_ahashent_t *lh = *((dt_ahashent_t **)lhs);
	dt_ahashent_t *rh = *((dt_ahashent_t **)rhs);
	dtrace_aggvarid_t lid, rid;

	lid = FUNC0(lh);
	rid = FUNC0(rh);

	if (lid < rid)
		return (DT_LESSTHAN);

	if (lid > rid)
		return (DT_GREATERTHAN);

	return (0);
}