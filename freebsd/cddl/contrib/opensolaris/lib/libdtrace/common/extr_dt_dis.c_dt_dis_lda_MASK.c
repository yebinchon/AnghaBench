#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint_t ;
typedef  int /*<<< orphan*/  dtrace_difo_t ;
typedef  int /*<<< orphan*/  dif_instr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 char* FUNC4 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC6(const dtrace_difo_t *dp, const char *name, dif_instr_t in, FILE *fp)
{
	uint_t var = FUNC0(in);
	const char *vname;

	(void) FUNC5(fp, "%-4s DT_VAR(%u), %%r%u, %%r%u", name,
	    var, FUNC1(in), FUNC2(in));

	if ((vname = FUNC4(dp, var, FUNC3(name))) != NULL)
		(void) FUNC5(fp, "\t\t! DT_VAR(%u) = \"%s\"", var, vname);
}