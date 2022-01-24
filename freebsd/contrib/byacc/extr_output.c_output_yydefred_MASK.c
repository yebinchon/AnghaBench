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
 scalar_t__* defred ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int nstates ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(void)
{
    int i, j;

    FUNC3("defred", (defred[0] ? defred[0] - 2 : 0));

    j = 10;
    for (i = 1; i < nstates; i++)
    {
	if (j < 10)
	    ++j;
	else
	{
	    FUNC2();
	    j = 1;
	}

	FUNC1((defred[i] ? defred[i] - 2 : 0));
    }

    FUNC0();
}