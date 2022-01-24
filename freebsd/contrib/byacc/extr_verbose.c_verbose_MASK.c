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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RRtotal ; 
 scalar_t__ SRtotal ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  Value_t ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int nrules ; 
 int nstates ; 
 int nsyms ; 
 int ntokens ; 
 int /*<<< orphan*/  null_rules ; 
 scalar_t__ nunused ; 
 int nvars ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 char** symbol_name ; 
 int* symbol_value ; 
 int /*<<< orphan*/  verbose_file ; 
 int /*<<< orphan*/  vflag ; 

void
FUNC8(void)
{
    int i;

    if (!vflag)
	return;

    null_rules = FUNC2(Value_t, nrules);
    FUNC1(null_rules);

    FUNC3(verbose_file, "\f\n");
    for (i = 0; i < nstates; i++)
	FUNC7(i);
    FUNC0(null_rules);

    if (nunused)
	FUNC6();
    if (SRtotal || RRtotal)
	FUNC5();

    FUNC3(verbose_file, "\n\n%d terminals, %d nonterminals\n", ntokens,
	    nvars);
    FUNC3(verbose_file, "%d grammar rules, %d states\n", nrules - 2, nstates);
#if defined(YYBTYACC)
    {				/* print out the grammar symbol # and parser internal symbol # for each
				   symbol as an aide to writing the implementation for YYDESTRUCT_CALL()
				   and YYSTYPE_TOSTRING() */
	int maxtok = 0;

	fputs("\ngrammar parser grammar\n", verbose_file);
	fputs("symbol# value# symbol\n", verbose_file);
	for (i = 0; i < ntokens; ++i)
	{
	    fprintf(verbose_file, " %5d  %5d  %s\n",
		    i, symbol_value[i], symbol_name[i]);
	    if (symbol_value[i] > maxtok)
		maxtok = symbol_value[i];
	}
	for (i = ntokens; i < nsyms; ++i)
	    fprintf(verbose_file, " %5d  %5d  %s\n",
		    i, (maxtok + 1) + symbol_value[i] + 1, symbol_name[i]);
    }
#endif
}