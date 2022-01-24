#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  dt_lib_path; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
struct TYPE_9__ {int /*<<< orphan*/ * dir_path; } ;
typedef  TYPE_2__ dt_dirpath_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDT_BADOPTVAL ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
	dt_dirpath_t *dp;

	if (arg == NULL)
		return (FUNC1(dtp, EDT_BADOPTVAL));

	if ((dp = FUNC3(sizeof (dt_dirpath_t))) == NULL ||
	    (dp->dir_path = FUNC4(arg)) == NULL) {
		FUNC2(dp);
		return (FUNC1(dtp, EDT_NOMEM));
	}

	FUNC0(&dtp->dt_lib_path, dp);
	return (0);
}