#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_probedesc_t ;
struct TYPE_4__ {size_t dt_maxprobe; int /*<<< orphan*/ ** dt_pdesc; int /*<<< orphan*/ ** dt_edesc; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dtrace_eprobedesc_t ;
typedef  size_t dtrace_epid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,size_t) ; 

int
FUNC2(dtrace_hdl_t *dtp, dtrace_epid_t epid,
    dtrace_eprobedesc_t **epdp, dtrace_probedesc_t **pdp)
{
	int rval;

	if (epid >= dtp->dt_maxprobe || dtp->dt_pdesc[epid] == NULL) {
		if ((rval = FUNC1(dtp, epid)) != 0)
			return (rval);
	}

	FUNC0(epid < dtp->dt_maxprobe);
	FUNC0(dtp->dt_edesc[epid] != NULL);
	FUNC0(dtp->dt_pdesc[epid] != NULL);
	*epdp = dtp->dt_edesc[epid];
	*pdp = dtp->dt_pdesc[epid];

	return (0);
}