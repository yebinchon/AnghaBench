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
 int /*<<< orphan*/  FUNC0 () ; 
 int nrules ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  output_file ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 size_t* rlhs ; 
 int* rrhs ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 size_t start_symbol ; 
 int* symbol_value ; 

__attribute__((used)) static void
FUNC5(void)
{
    int i;
    int j;

    FUNC1(output_file);

    FUNC4("lhs", symbol_value[start_symbol]);

    j = 10;
    for (i = 3; i < nrules; i++)
    {
	if (j >= 10)
	{
	    FUNC3();
	    j = 1;
	}
	else
	    ++j;

	FUNC2(symbol_value[rlhs[i]]);
    }
    FUNC0();

    FUNC4("len", 2);

    j = 10;
    for (i = 3; i < nrules; i++)
    {
	if (j >= 10)
	{
	    FUNC3();
	    j = 1;
	}
	else
	    j++;

	FUNC2(rrhs[i + 1] - rrhs[i] - 1);
    }
    FUNC0();
}