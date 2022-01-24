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
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,int,int,char*) ; 

__attribute__((used)) static void
FUNC4(const dtrace_difo_t *dp, const char *name, dif_instr_t in, FILE *fp)
{
	uint_t subr = FUNC1(in);

	(void) FUNC3(fp, "%-4s DIF_SUBR(%u), %%r%u\t\t! %s",
	    name, subr, FUNC0(in), FUNC2(NULL, subr));
}