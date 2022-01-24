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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Value_t ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  nstates ; 
 int nsyms ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int start_symbol ; 
 int /*<<< orphan*/  state_count ; 

__attribute__((used)) static void
FUNC8(void)
{
    int i, j, k;

    state_count = FUNC1(nstates, Value_t);

    k = FUNC2(start_symbol + 1);
    FUNC7("dgoto", k);
    FUNC6(start_symbol + 1, k);

    j = 10;
    for (i = start_symbol + 2; i < nsyms; i++)
    {
	if (j >= 10)
	{
	    FUNC5();
	    j = 1;
	}
	else
	    ++j;

	k = FUNC2(i);
	FUNC4(k);
	FUNC6(i, k);
    }

    FUNC3();
    FUNC0(state_count);
}