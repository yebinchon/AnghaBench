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
typedef  int /*<<< orphan*/  dtrace_difo_t ;
typedef  int /*<<< orphan*/  dif_instr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,int,int) ; 

__attribute__((used)) static void
FUNC3(const dtrace_difo_t *dp, const char *name, dif_instr_t in, FILE *fp)
{
	(void) FUNC2(fp, "%-4s %%r%u, %%r%u", name,
	    FUNC0(in), FUNC1(in));
}