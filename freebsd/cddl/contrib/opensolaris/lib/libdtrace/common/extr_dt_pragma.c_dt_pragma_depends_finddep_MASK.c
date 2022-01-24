#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct TYPE_7__ {char* dir_path; } ;
struct TYPE_6__ {TYPE_2__ dt_lib_path; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
typedef  TYPE_2__ dt_dirpath_t ;

/* Variables and functions */
 int /*<<< orphan*/  D_PRAGMA_DEPEND ; 
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,char*,char const*) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static void 
FUNC4(dtrace_hdl_t *dtp, const char *lname, char *lib,
    size_t len)
{
	dt_dirpath_t *dirp;
	struct stat sbuf;
	int found = 0;

	for (dirp = FUNC0(&dtp->dt_lib_path); dirp != NULL;
	    dirp = FUNC0(dirp)) {
		(void) FUNC1(lib, len, "%s/%s", dirp->dir_path, lname);

		if (FUNC2(lib, &sbuf) == 0) {
			found = 1;
			break;
		}
	}

	if (!found)
		FUNC3(D_PRAGMA_DEPEND,
		    "failed to find dependency in libpath: %s", lname);
}