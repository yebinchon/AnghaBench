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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
	char *buf;
	size_t len;
	const char *opt = (const char *)option;

	if (opt == NULL || arg == NULL)
		return (FUNC2(dtp, EDT_BADOPTVAL));

	if (dtp->dt_pcb != NULL)
		return (FUNC2(dtp, EDT_BADOPTCTX));

	len = FUNC5(opt) + FUNC5(arg) + 1;
	buf = FUNC0(len);

	(void) FUNC4(buf, opt);
	(void) FUNC3(buf, arg);

	if (FUNC1(dtp, buf) == NULL)
		return (FUNC2(dtp, EDT_NOMEM));

	return (0);
}