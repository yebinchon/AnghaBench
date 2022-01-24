#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ tag; } ;
struct TYPE_3__ {scalar_t__ tag; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ last_was_action ; 
 int maxitems ; 
 int nitems ; 
 size_t nrules ; 
 TYPE_2__** pitem ; 
 TYPE_1__** plhs ; 

__attribute__((used)) static void
FUNC2(void)
{
    int i;

    if (!last_was_action && plhs[nrules]->tag)
    {
	if (pitem[nitems - 1])
	{
	    for (i = nitems - 1; (i > 0) && pitem[i]; --i)
		continue;
	    if (pitem[i + 1] == 0 || pitem[i + 1]->tag != plhs[nrules]->tag)
		FUNC0(plhs[nrules]->name);
	}
	else
	    FUNC0(plhs[nrules]->name);
    }

    last_was_action = 0;
    if (nitems >= maxitems)
	FUNC1();
    pitem[nitems] = 0;
    ++nitems;
    ++nrules;
}