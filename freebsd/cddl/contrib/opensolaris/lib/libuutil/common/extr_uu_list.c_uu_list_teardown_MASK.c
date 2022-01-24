#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ ul_debug; } ;
typedef  TYPE_1__ uu_list_t ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,void*) ; 

void *
FUNC3(uu_list_t *lp, void **cookie)
{
	void *ep;

	/*
	 * XXX: disable list modification until list is empty
	 */
	if (lp->ul_debug && *cookie != NULL)
		FUNC2("uu_list_teardown(%p, %p): unexpected cookie\n",
		    (void *)lp, (void *)cookie);

	ep = FUNC0(lp);
	if (ep)
		FUNC1(lp, ep);
	return (ep);
}