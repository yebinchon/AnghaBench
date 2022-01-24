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
struct TYPE_4__ {int /*<<< orphan*/  dt_stdcmode; int /*<<< orphan*/ * dt_pcb; } ;
typedef  TYPE_1__ dtrace_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  DT_STDC_XA ; 
 int /*<<< orphan*/  DT_STDC_XC ; 
 int /*<<< orphan*/  DT_STDC_XS ; 
 int /*<<< orphan*/  DT_STDC_XT ; 
 int /*<<< orphan*/  EDT_BADOPTCTX ; 
 int /*<<< orphan*/  EDT_BADOPTVAL ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
	if (arg == NULL)
		return (FUNC0(dtp, EDT_BADOPTVAL));

	if (dtp->dt_pcb != NULL)
		return (FUNC0(dtp, EDT_BADOPTCTX));

	if (FUNC1(arg, "a") == 0)
		dtp->dt_stdcmode = DT_STDC_XA;
	else if (FUNC1(arg, "c") == 0)
		dtp->dt_stdcmode = DT_STDC_XC;
	else if (FUNC1(arg, "s") == 0)
		dtp->dt_stdcmode = DT_STDC_XS;
	else if (FUNC1(arg, "t") == 0)
		dtp->dt_stdcmode = DT_STDC_XT;
	else
		return (FUNC0(dtp, EDT_BADOPTVAL));

	return (0);
}