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
typedef  size_t Value_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int nrules ; 
 size_t* ritem ; 
 size_t* rlhs ; 
 int* rrhs ; 
 int /*<<< orphan*/ * rules_used ; 
 char** symbol_name ; 
 int /*<<< orphan*/  verbose_file ; 

__attribute__((used)) static void
FUNC1(void)
{
    int i;
    Value_t *p;

    FUNC0(verbose_file, "\n\nRules never reduced:\n");
    for (i = 3; i < nrules; ++i)
    {
	if (!rules_used[i])
	{
	    FUNC0(verbose_file, "\t%s :", symbol_name[rlhs[i]]);
	    for (p = ritem + rrhs[i]; *p >= 0; ++p)
		FUNC0(verbose_file, " %s", symbol_name[*p]);
	    FUNC0(verbose_file, "  (%d)\n", i - 2);
	}
    }
}