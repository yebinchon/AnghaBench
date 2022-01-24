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
struct TYPE_5__ {int /*<<< orphan*/ * dt_pcb; } ;
typedef  TYPE_1__ dtrace_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDT_BADOPTCTX ; 
 int /*<<< orphan*/  EDT_BADOPTVAL ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
	if (arg != NULL)
		return (FUNC1(dtp, EDT_BADOPTVAL));

	if (dtp->dt_pcb != NULL)
		return (FUNC1(dtp, EDT_BADOPTCTX));

	if (FUNC0(dtp, "-H") == NULL)
		return (FUNC1(dtp, EDT_NOMEM));

	return (0);
}