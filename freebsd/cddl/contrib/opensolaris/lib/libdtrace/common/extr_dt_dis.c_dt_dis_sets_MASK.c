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
typedef  int uint_t ;
struct TYPE_3__ {int dtdo_strlen; char* dtdo_strtab; } ;
typedef  TYPE_1__ dtrace_difo_t ;
typedef  int /*<<< orphan*/  dif_instr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,...) ; 

__attribute__((used)) static void
FUNC3(const dtrace_difo_t *dp, const char *name, dif_instr_t in, FILE *fp)
{
	uint_t strptr = FUNC1(in);

	(void) FUNC2(fp, "%-4s DT_STRING[%u], %%r%u", name,
	    strptr, FUNC0(in));

	if (strptr < dp->dtdo_strlen)
		(void) FUNC2(fp, "\t\t! \"%s\"", dp->dtdo_strtab + strptr);
}