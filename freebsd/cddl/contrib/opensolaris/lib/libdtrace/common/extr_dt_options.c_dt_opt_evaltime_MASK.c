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
struct TYPE_4__ {int /*<<< orphan*/  dt_prcmode; } ;
typedef  TYPE_1__ dtrace_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  DT_PROC_STOP_CREATE ; 
 int /*<<< orphan*/  DT_PROC_STOP_MAIN ; 
 int /*<<< orphan*/  DT_PROC_STOP_POSTINIT ; 
 int /*<<< orphan*/  DT_PROC_STOP_PREINIT ; 
 int /*<<< orphan*/  EDT_BADOPTVAL ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
	if (arg == NULL)
		return (FUNC0(dtp, EDT_BADOPTVAL));

	if (FUNC1(arg, "exec") == 0)
		dtp->dt_prcmode = DT_PROC_STOP_CREATE;
	else if (FUNC1(arg, "preinit") == 0)
		dtp->dt_prcmode = DT_PROC_STOP_PREINIT;
	else if (FUNC1(arg, "postinit") == 0)
		dtp->dt_prcmode = DT_PROC_STOP_POSTINIT;
	else if (FUNC1(arg, "main") == 0)
		dtp->dt_prcmode = DT_PROC_STOP_MAIN;
	else
		return (FUNC0(dtp, EDT_BADOPTVAL));

	return (0);
}