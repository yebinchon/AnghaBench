#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct ps_prochandle {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/ * dt_vector; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
typedef  scalar_t__ dtrace_actkind_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_12__ {int /*<<< orphan*/  st_value; } ;
typedef  TYPE_2__ GElf_Sym ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ DTRACEACT_USYM ; 
 int PGRAB_FORCE ; 
 int PGRAB_RDONLY ; 
 scalar_t__ FUNC0 (struct ps_prochandle*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char const*,char*) ; 
 struct ps_prochandle* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct ps_prochandle*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC8(dtrace_hdl_t *dtp, FILE *fp, caddr_t addr, dtrace_actkind_t act)
{
	/* LINTED - alignment */
	uint64_t pid = ((uint64_t *)addr)[0];
	/* LINTED - alignment */
	uint64_t pc = ((uint64_t *)addr)[1];
	const char *format = "  %-50s";
	char *s;
	int n, len = 256;

	if (act == DTRACEACT_USYM && dtp->dt_vector == NULL) {
		struct ps_prochandle *P;

		if ((P = FUNC3(dtp, pid,
		    PGRAB_RDONLY | PGRAB_FORCE, 0)) != NULL) {
			GElf_Sym sym;

			FUNC4(dtp, P);

			if (FUNC0(P, pc, NULL, 0, &sym) == 0)
				pc = sym.st_value;

			FUNC6(dtp, P);
			FUNC5(dtp, P);
		}
	}

	do {
		n = len;
		s = FUNC1(n);
	} while ((len = FUNC7(dtp, pid, pc, s, n)) > n);

	return (FUNC2(dtp, fp, format, s));
}