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
struct TYPE_4__ {char* dt_ld_path; int /*<<< orphan*/ * dt_pcb; } ;
typedef  TYPE_1__ dtrace_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDT_BADOPTCTX ; 
 int /*<<< orphan*/  EDT_BADOPTVAL ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
	char *ld;

	if (arg == NULL)
		return (FUNC0(dtp, EDT_BADOPTVAL));

	if (dtp->dt_pcb != NULL)
		return (FUNC0(dtp, EDT_BADOPTCTX));

	if ((ld = FUNC2(arg)) == NULL)
		return (FUNC0(dtp, EDT_NOMEM));

	FUNC1(dtp->dt_ld_path);
	dtp->dt_ld_path = ld;

	return (0);
}