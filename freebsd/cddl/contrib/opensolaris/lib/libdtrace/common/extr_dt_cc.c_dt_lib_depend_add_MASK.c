#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dt_list_t ;
struct TYPE_7__ {struct TYPE_7__* dtld_libpath; int /*<<< orphan*/ * dtld_library; } ;
typedef  TYPE_1__ dt_lib_depend_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDT_NOMEM ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*,int) ; 
 char* FUNC8 (char const*,char) ; 

int
FUNC9(dtrace_hdl_t *dtp, dt_list_t *dlp, const char *arg)
{
	dt_lib_depend_t *dld;
	const char *end;

	FUNC0(arg != NULL);

	if ((end = FUNC8(arg, '/')) == NULL)
		return (FUNC4(dtp, EINVAL));

	if ((dld = FUNC5(dtp, sizeof (dt_lib_depend_t))) == NULL)
		return (-1);

	if ((dld->dtld_libpath = FUNC1(dtp, MAXPATHLEN)) == NULL) {
		FUNC2(dtp, dld);
		return (-1);
	}

	(void) FUNC7(dld->dtld_libpath, arg, end - arg + 2);
	if ((dld->dtld_library = FUNC6(arg)) == NULL) {
		FUNC2(dtp, dld->dtld_libpath);
		FUNC2(dtp, dld);
		return (FUNC4(dtp, EDT_NOMEM));
	}

	FUNC3(dlp, dld);
	return (0);
}