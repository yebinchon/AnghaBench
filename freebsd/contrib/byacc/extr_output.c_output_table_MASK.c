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
 int MAXYYINT ; 
 int /*<<< orphan*/  code_file ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int high ; 
 int /*<<< orphan*/  outline ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * table ; 

__attribute__((used)) static void
FUNC7(void)
{
    int i;
    int j;

    if (high >= MAXYYINT)
    {
	FUNC3(stderr, "YYTABLESIZE: %d\n", high);
	FUNC3(stderr, "Table is longer than %d elements.\n", MAXYYINT);
	FUNC1(1);
    }

    ++outline;
    FUNC3(code_file, "#define YYTABLESIZE %d\n", high);
    FUNC6("table", table[0]);

    j = 10;
    for (i = 1; i <= high; i++)
    {
	if (j >= 10)
	{
	    FUNC5();
	    j = 1;
	}
	else
	    ++j;

	FUNC4(table[i]);
    }

    FUNC2();
    FUNC0(table);
}