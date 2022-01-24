#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ulp_lock; struct TYPE_3__* ulp_next; } ;
typedef  TYPE_1__ uu_list_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uu_lpool_list_lock ; 
 TYPE_1__ uu_null_lpool ; 

void
FUNC1(void)
{
	uu_list_pool_t *pp;

	for (pp = uu_null_lpool.ulp_next; pp != &uu_null_lpool;
	    pp = pp->ulp_next)
		(void) FUNC0(&pp->ulp_lock);
	(void) FUNC0(&uu_lpool_list_lock);
}