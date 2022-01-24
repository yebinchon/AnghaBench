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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_4__ {int paths; char** path; int /*<<< orphan*/  can_be_active; } ;
typedef  TYPE_1__ importargs_t ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  g_zfs ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,char*) ; 
 int FUNC9 (char*) ; 
 char* FUNC10 (char*,char*) ; 
 char* FUNC11 (char*,char*) ; 
 char* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static char *
FUNC15(char **target, nvlist_t **configp, int dirc, char **dirv)
{
	nvlist_t *pools;
	nvlist_t *match = NULL;
	char *name = NULL;
	char *sepp = NULL;
	char sep = '\0';
	int count = 0;
	importargs_t args;

	FUNC0(&args, sizeof (args));
	args.paths = dirc;
	args.path = dirv;
	args.can_be_active = B_TRUE;

	if ((sepp = FUNC10(*target, "/@")) != NULL) {
		sep = *sepp;
		*sepp = '\0';
	}

	pools = FUNC14(g_zfs, &args);

	if (pools != NULL) {
		nvpair_t *elem = NULL;
		while ((elem = FUNC3(pools, elem)) != NULL) {
			FUNC13(FUNC5(elem, configp) == 0);
			if (FUNC6(*configp, *target)) {
				count++;
				if (match != NULL) {
					/* print previously found config */
					if (name != NULL) {
						(void) FUNC7("%s\n", name);
						FUNC1(match, 8);
						name = NULL;
					}
					(void) FUNC7("%s\n",
					    FUNC4(elem));
					FUNC1(*configp, 8);
				} else {
					match = *configp;
					name = FUNC4(elem);
				}
			}
		}
	}
	if (count > 1)
		(void) FUNC2("\tMatched %d pools - use pool GUID "
		    "instead of pool name or \n"
		    "\tpool name part of a dataset name to select pool", count);

	if (sepp)
		*sepp = sep;
	/*
	 * If pool GUID was specified for pool id, replace it with pool name
	 */
	if (name && (FUNC11(*target, name) != *target)) {
		int sz = 1 + FUNC9(name) + ((sepp) ? FUNC9(sepp) : 0);

		*target = FUNC12(sz, UMEM_NOFAIL);
		(void) FUNC8(*target, sz, "%s%s", name, sepp ? sepp : "");
	}

	*configp = name ? match : NULL;

	return (name);
}