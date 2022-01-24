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
struct TYPE_8__ {int /*<<< orphan*/  dt_lib_dep_sorted; int /*<<< orphan*/  dt_lib_dep; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
struct TYPE_9__ {struct TYPE_9__* dtld_library; struct TYPE_9__* dtld_libpath; int /*<<< orphan*/  dtld_dependents; int /*<<< orphan*/  dtld_dependencies; } ;
typedef  TYPE_2__ dt_lib_depend_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(dtrace_hdl_t *dtp)
{
	dt_lib_depend_t *dld, *dlda;

	while ((dld = FUNC2(&dtp->dt_lib_dep)) != NULL) {
		while ((dlda = FUNC2(&dld->dtld_dependencies)) != NULL) {
			FUNC1(&dld->dtld_dependencies, dlda);
			FUNC0(dtp, dlda->dtld_library);
			FUNC0(dtp, dlda->dtld_libpath);
			FUNC0(dtp, dlda);
		}
		while ((dlda = FUNC2(&dld->dtld_dependents)) != NULL) {
			FUNC1(&dld->dtld_dependents, dlda);
			FUNC0(dtp, dlda->dtld_library);
			FUNC0(dtp, dlda->dtld_libpath);
			FUNC0(dtp, dlda);
		}
		FUNC1(&dtp->dt_lib_dep, dld);
		FUNC0(dtp, dld->dtld_library);
		FUNC0(dtp, dld->dtld_libpath);
		FUNC0(dtp, dld);
	}

	while ((dld = FUNC2(&dtp->dt_lib_dep_sorted)) != NULL) {
		FUNC1(&dtp->dt_lib_dep_sorted, dld);
		FUNC0(dtp, dld->dtld_library);
		FUNC0(dtp, dld);
	}
}