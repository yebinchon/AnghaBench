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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int nrules ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 size_t* ritem ; 
 size_t* rlhs ; 
 int FUNC2 (char*) ; 
 char** symbol_name ; 
 int /*<<< orphan*/ * verbose_file ; 
 int /*<<< orphan*/  vflag ; 

__attribute__((used)) static void
FUNC3(void)
{
    int i, k;
    size_t j, spacing = 0;
    FILE *f = verbose_file;

    if (!vflag)
	return;

    k = 1;
    for (i = 2; i < nrules; ++i)
    {
	if (rlhs[i] != rlhs[i - 1])
	{
	    if (i != 2)
		FUNC0(f, "\n");
	    FUNC0(f, "%4d  %s :", i - 2, symbol_name[rlhs[i]]);
	    spacing = FUNC2(symbol_name[rlhs[i]]) + 1;
	}
	else
	{
	    FUNC0(f, "%4d  ", i - 2);
	    j = spacing;
	    while (j-- != 0)
		FUNC1(' ', f);
	    FUNC1('|', f);
	}

	while (ritem[k] >= 0)
	{
	    FUNC0(f, " %s", symbol_name[ritem[k]]);
	    ++k;
	}
	++k;
	FUNC1('\n', f);
    }
}