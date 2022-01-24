#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct ps_prochandle {int dummy; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  objname ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  c ;
struct TYPE_3__ {scalar_t__ st_value; } ;
typedef  TYPE_1__ GElf_Sym ;

/* Variables and functions */
 int PATH_MAX ; 
 int PGRAB_FORCE ; 
 int PGRAB_RDONLY ; 
 scalar_t__ FUNC0 (struct ps_prochandle*,scalar_t__,char*,int,TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct ps_prochandle*,scalar_t__,char*,int) ; 
 char* FUNC2 (char*) ; 
 struct ps_prochandle* FUNC3 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ps_prochandle*) ; 
 int FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,...) ; 

int
FUNC9(dtrace_hdl_t *dtp, pid_t pid,
    uint64_t addr, char *str, int nbytes)
{
	char name[PATH_MAX], objname[PATH_MAX], c[PATH_MAX * 2];
	struct ps_prochandle *P = NULL;
	GElf_Sym sym;
	char *obj;

	if (pid != 0)
		P = FUNC3(dtp, pid, PGRAB_RDONLY | PGRAB_FORCE, 0);

	if (P == NULL) {
	  (void) FUNC8(c, sizeof (c), "0x%jx", (uintmax_t)addr);
		return (FUNC7(c, str, nbytes));
	}

	FUNC4(dtp, P);

	if (FUNC0(P, addr, name, sizeof (name), &sym) == 0) {
		(void) FUNC1(P, addr, objname, sizeof (objname));

		obj = FUNC2(objname);

		if (addr > sym.st_value) {
			(void) FUNC8(c, sizeof (c), "%s`%s+0x%llx", obj,
			    name, (u_longlong_t)(addr - sym.st_value));
		} else {
			(void) FUNC8(c, sizeof (c), "%s`%s", obj, name);
		}
	} else if (FUNC1(P, addr, objname, sizeof (objname)) != 0) {
		(void) FUNC8(c, sizeof (c), "%s`0x%jx",
				FUNC2(objname), (uintmax_t)addr);
	} else {
	  (void) FUNC8(c, sizeof (c), "0x%jx", (uintmax_t)addr);
	}

	FUNC6(dtp, P);
	FUNC5(dtp, P);

	return (FUNC7(c, str, nbytes));
}