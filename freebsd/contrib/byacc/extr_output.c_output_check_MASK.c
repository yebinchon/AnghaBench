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
 int /*<<< orphan*/ * check ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int high ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
    int i;
    int j;

    FUNC4("check", check[0]);

    j = 10;
    for (i = 1; i <= high; i++)
    {
	if (j >= 10)
	{
	    FUNC3();
	    j = 1;
	}
	else
	    ++j;

	FUNC2(check[i]);
    }

    FUNC1();
    FUNC0(check);
}