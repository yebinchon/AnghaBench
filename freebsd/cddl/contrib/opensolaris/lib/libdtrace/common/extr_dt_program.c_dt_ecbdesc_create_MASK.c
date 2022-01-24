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
typedef  int /*<<< orphan*/  dtrace_probedesc_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_5__ {int /*<<< orphan*/  dted_probe; } ;
typedef  TYPE_1__ dtrace_ecbdesc_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDT_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 

dtrace_ecbdesc_t *
FUNC3(dtrace_hdl_t *dtp, const dtrace_probedesc_t *pdp)
{
	dtrace_ecbdesc_t *edp;

	if ((edp = FUNC2(dtp, sizeof (dtrace_ecbdesc_t))) == NULL) {
		(void) FUNC1(dtp, EDT_NOMEM);
		return (NULL);
	}

	edp->dted_probe = *pdp;
	FUNC0(edp);
	return (edp);
}