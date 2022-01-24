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
struct TYPE_4__ {char** dt_cpp_argv; char* dt_cpp_path; int /*<<< orphan*/ * dt_pcb; } ;
typedef  TYPE_1__ dtrace_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDT_BADOPTCTX ; 
 int /*<<< orphan*/  EDT_BADOPTVAL ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
	char *cpp;

	if (arg == NULL)
		return (FUNC0(dtp, EDT_BADOPTVAL));

	if (dtp->dt_pcb != NULL)
		return (FUNC0(dtp, EDT_BADOPTCTX));

	if ((cpp = FUNC3(arg)) == NULL)
		return (FUNC0(dtp, EDT_NOMEM));

	dtp->dt_cpp_argv[0] = (char *)FUNC2(cpp);
	FUNC1(dtp->dt_cpp_path);
	dtp->dt_cpp_path = cpp;

	return (0);
}