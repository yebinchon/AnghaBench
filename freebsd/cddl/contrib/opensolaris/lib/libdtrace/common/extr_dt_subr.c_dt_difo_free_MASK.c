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
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_4__ {struct TYPE_4__* dtdo_xlmtab; struct TYPE_4__* dtdo_ureltab; struct TYPE_4__* dtdo_kreltab; struct TYPE_4__* dtdo_vartab; struct TYPE_4__* dtdo_strtab; struct TYPE_4__* dtdo_inttab; struct TYPE_4__* dtdo_buf; } ;
typedef  TYPE_1__ dtrace_difo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC1(dtrace_hdl_t *dtp, dtrace_difo_t *dp)
{
	if (dp == NULL)
		return; /* simplify caller code */

	FUNC0(dtp, dp->dtdo_buf);
	FUNC0(dtp, dp->dtdo_inttab);
	FUNC0(dtp, dp->dtdo_strtab);
	FUNC0(dtp, dp->dtdo_vartab);
	FUNC0(dtp, dp->dtdo_kreltab);
	FUNC0(dtp, dp->dtdo_ureltab);
	FUNC0(dtp, dp->dtdo_xlmtab);

	FUNC0(dtp, dp);
}