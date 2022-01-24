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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PER_STATE ; 
 int /*<<< orphan*/ * base ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int nstates ; 
 int nvectors ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
    int i, j;

    FUNC5("sindex", base[0]);

    j = 10;
    for (i = 1; i < nstates; i++)
    {
	if (j >= 10)
	{
	    FUNC4();
	    j = 1;
	}
	else
	    ++j;

	FUNC2(base[i]);
    }

    FUNC1();

    FUNC5("rindex", base[nstates]);

    j = 10;
    for (i = nstates + 1; i < 2 * nstates; i++)
    {
	if (j >= 10)
	{
	    FUNC4();
	    j = 1;
	}
	else
	    ++j;

	FUNC2(base[i]);
    }

    FUNC1();

#if defined(YYBTYACC)
    output_line("#if YYBTYACC");
    start_int_table("cindex", base[2 * nstates]);

    j = 10;
    for (i = 2 * nstates + 1; i < 3 * nstates; i++)
    {
	if (j >= 10)
	{
	    output_newline();
	    j = 1;
	}
	else
	    ++j;

	output_int(base[i]);
    }

    end_table();
    output_line("#endif");
#endif

    FUNC5("gindex", base[PER_STATE * nstates]);

    j = 10;
    for (i = PER_STATE * nstates + 1; i < nvectors - 1; i++)
    {
	if (j >= 10)
	{
	    FUNC4();
	    j = 1;
	}
	else
	    ++j;

	FUNC2(base[i]);
    }

    FUNC1();
    FUNC0(base);
}