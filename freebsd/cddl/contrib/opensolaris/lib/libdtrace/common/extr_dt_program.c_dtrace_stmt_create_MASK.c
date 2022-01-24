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
struct TYPE_4__ {void* dtsd_stmtattr; void* dtsd_descattr; int /*<<< orphan*/ * dtsd_ecbdesc; } ;
typedef  TYPE_1__ dtrace_stmtdesc_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dtrace_ecbdesc_t ;

/* Variables and functions */
 void* _dtrace_defattr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 

dtrace_stmtdesc_t *
FUNC2(dtrace_hdl_t *dtp, dtrace_ecbdesc_t *edp)
{
	dtrace_stmtdesc_t *sdp;

	if ((sdp = FUNC1(dtp, sizeof (dtrace_stmtdesc_t))) == NULL)
		return (NULL);

	FUNC0(edp);
	sdp->dtsd_ecbdesc = edp;
	sdp->dtsd_descattr = _dtrace_defattr;
	sdp->dtsd_stmtattr = _dtrace_defattr;

	return (sdp);
}