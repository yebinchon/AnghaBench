#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint_t ;
typedef  scalar_t__ pid_t ;
struct TYPE_11__ {scalar_t__ dtc_ctfmodel; } ;
struct TYPE_12__ {size_t dt_modbuckets; int /*<<< orphan*/  dt_macros; TYPE_1__ dt_conf; int /*<<< orphan*/  dt_nmods; TYPE_3__** dt_mods; int /*<<< orphan*/  dt_modlist; } ;
typedef  TYPE_2__ dtrace_hdl_t ;
struct TYPE_13__ {char* dm_name; scalar_t__ dm_pid; int /*<<< orphan*/ * dm_ops; struct TYPE_13__* dm_next; } ;
typedef  TYPE_3__ dt_module_t ;
struct TYPE_14__ {scalar_t__ di_id; } ;
typedef  TYPE_4__ dt_ident_t ;

/* Variables and functions */
 scalar_t__ CTF_MODEL_LP64 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  dt_modops_32 ; 
 int /*<<< orphan*/  dt_modops_64 ; 
 size_t FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 TYPE_3__* FUNC5 (int) ; 
 scalar_t__ FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 long FUNC9 (char*,char**,int) ; 

dt_module_t *
FUNC10(dtrace_hdl_t *dtp, const char *name)
{
	long pid;
	char *eptr;
	dt_ident_t *idp;
	uint_t h = FUNC4(name, NULL) % dtp->dt_modbuckets;
	dt_module_t *dmp;

	for (dmp = dtp->dt_mods[h]; dmp != NULL; dmp = dmp->dm_next) {
		if (FUNC6(dmp->dm_name, name) == 0)
			return (dmp);
	}

	if ((dmp = FUNC5(sizeof (dt_module_t))) == NULL)
		return (NULL); /* caller must handle allocation failure */

	FUNC0(dmp, sizeof (dt_module_t));
	(void) FUNC7(dmp->dm_name, name, sizeof (dmp->dm_name));
	FUNC3(&dtp->dt_modlist, dmp);
	dmp->dm_next = dtp->dt_mods[h];
	dtp->dt_mods[h] = dmp;
	dtp->dt_nmods++;

	if (dtp->dt_conf.dtc_ctfmodel == CTF_MODEL_LP64)
		dmp->dm_ops = &dt_modops_64;
	else
		dmp->dm_ops = &dt_modops_32;

	/*
	 * Modules for userland processes are special. They always refer to a
	 * specific process and have a copy of their CTF data from a specific
	 * instant in time. Any dt_module_t that begins with 'pid' is a module
	 * for a specific process, much like how any probe description that
	 * begins with 'pid' is special. pid123 refers to process 123. A module
	 * that is just 'pid' refers specifically to pid$target. This is
	 * generally done as D does not currently allow for macros to be
	 * evaluated when working with types.
	 */
	if (FUNC8(dmp->dm_name, "pid", 3) == 0) {
		errno = 0;
		if (dmp->dm_name[3] == '\0') {
			idp = FUNC2(dtp->dt_macros, "target");
			if (idp != NULL && idp->di_id != 0)
				dmp->dm_pid = idp->di_id;
		} else {
			pid = FUNC9(dmp->dm_name + 3, &eptr, 10);
			if (errno == 0 && *eptr == '\0')
				dmp->dm_pid = (pid_t)pid;
			else
				FUNC1("encountered malformed pid "
				    "module: %s\n", dmp->dm_name);
		}
	}

	return (dmp);
}