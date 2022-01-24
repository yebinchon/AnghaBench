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
typedef  int /*<<< orphan*/  ulong_t ;
struct TYPE_5__ {int /*<<< orphan*/  dr_size; int /*<<< orphan*/ * dr_bitmap; } ;
typedef  TYPE_1__ dt_regset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 

dt_regset_t *
FUNC4(ulong_t nregs)
{
	ulong_t n = FUNC0(nregs);
	dt_regset_t *drp = FUNC3(sizeof (dt_regset_t));

	if (drp == NULL)
		return (NULL);

	drp->dr_bitmap = FUNC1(n, sizeof (ulong_t));

	if (drp->dr_bitmap == NULL) {
		FUNC2(drp);
		return (NULL);
	}

	drp->dr_size = nregs;

	return (drp);
}