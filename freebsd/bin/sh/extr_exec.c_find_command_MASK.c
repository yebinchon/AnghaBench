#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int index; } ;
struct tblentry {scalar_t__ cmdtype; int special; TYPE_1__ param; } ;
struct stat {int st_mode; scalar_t__ st_uid; scalar_t__ st_gid; } ;
struct cmdentry {scalar_t__ cmdtype; int special; TYPE_1__ u; } ;

/* Variables and functions */
 scalar_t__ CMDBUILTIN ; 
 scalar_t__ CMDFUNCTION ; 
 void* CMDNORMAL ; 
 scalar_t__ CMDUNKNOWN ; 
 int DO_ERR ; 
 int DO_NOFUNC ; 
 int EACCES ; 
 int ENOENT ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct tblentry* FUNC2 (char const*,int) ; 
 int cmdtable_cd ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*) ; 
 int FUNC4 (char const*,int*) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  out2 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 char* FUNC8 (char const**,char const**,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,struct stat*) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,char) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

void
FUNC15(const char *name, struct cmdentry *entry, int act,
    const char *path)
{
	struct tblentry *cmdp, loc_cmd;
	int idx;
	const char *opt;
	char *fullname;
	struct stat statb;
	int e;
	int i;
	int spec;
	int cd;

	/* If name contains a slash, don't use the hash table */
	if (FUNC11(name, '/') != NULL) {
		entry->cmdtype = CMDNORMAL;
		entry->u.index = 0;
		entry->special = 0;
		return;
	}

	cd = 0;

	/* If name is in the table, we're done */
	if ((cmdp = FUNC2(name, 0)) != NULL) {
		if (cmdp->cmdtype == CMDFUNCTION && act & DO_NOFUNC)
			cmdp = NULL;
		else
			goto success;
	}

	/* Check for builtin next */
	if ((i = FUNC4(name, &spec)) >= 0) {
		INTOFF;
		cmdp = FUNC2(name, 1);
		if (cmdp->cmdtype == CMDFUNCTION)
			cmdp = &loc_cmd;
		cmdp->cmdtype = CMDBUILTIN;
		cmdp->param.index = i;
		cmdp->special = spec;
		INTON;
		goto success;
	}

	/* We have to search path. */

	e = ENOENT;
	idx = -1;
	for (;(fullname = FUNC8(&path, &opt, name)) != NULL;
	    FUNC14(fullname)) {
		idx++;
		if (opt) {
			if (FUNC13(opt, "func", 4) == 0) {
				/* handled below */
			} else {
				continue; /* ignore unimplemented options */
			}
		}
		if (fullname[0] != '/')
			cd = 1;
		if (FUNC10(fullname, &statb) < 0) {
			if (errno != ENOENT && errno != ENOTDIR)
				e = errno;
			continue;
		}
		e = EACCES;	/* if we fail, this will be the error */
		if (!FUNC0(statb.st_mode))
			continue;
		if (opt) {		/* this is a %func directory */
			FUNC9(fullname);
			if ((cmdp = FUNC2(name, 0)) == NULL || cmdp->cmdtype != CMDFUNCTION)
				FUNC3("%s not defined in %s", name, fullname);
			FUNC14(fullname);
			goto success;
		}
#ifdef notdef
		if (statb.st_uid == geteuid()) {
			if ((statb.st_mode & 0100) == 0)
				goto loop;
		} else if (statb.st_gid == getegid()) {
			if ((statb.st_mode & 010) == 0)
				goto loop;
		} else {
			if ((statb.st_mode & 01) == 0)
				goto loop;
		}
#endif
		FUNC1(("searchexec \"%s\" returns \"%s\"\n", name, fullname));
		INTOFF;
		FUNC14(fullname);
		cmdp = FUNC2(name, 1);
		if (cmdp->cmdtype == CMDFUNCTION)
			cmdp = &loc_cmd;
		cmdp->cmdtype = CMDNORMAL;
		cmdp->param.index = idx;
		cmdp->special = 0;
		INTON;
		goto success;
	}

	if (act & DO_ERR) {
		if (e == ENOENT || e == ENOTDIR)
			FUNC7(out2, "%s: not found\n", name);
		else
			FUNC7(out2, "%s: %s\n", name, FUNC12(e));
	}
	entry->cmdtype = CMDUNKNOWN;
	entry->u.index = 0;
	entry->special = 0;
	return;

success:
	if (cd)
		cmdtable_cd = 1;
	entry->cmdtype = cmdp->cmdtype;
	entry->u = cmdp->param;
	entry->special = cmdp->special;
}