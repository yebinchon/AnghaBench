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
 int EOF ; 
 int EXPECT ; 
 int EXPECT_RR ; 
 void* RRexpect ; 
 void* SRexpect ; 
 int* cptr ; 
 void* FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  line ; 
 int /*<<< orphan*/  lineno ; 
 int /*<<< orphan*/  prec ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(int assoc)
{
    int c;

    if (assoc != EXPECT && assoc != EXPECT_RR)
	++prec;

    /*
     * Stay away from nextc - doesn't
     * detect EOL and will read to EOF.
     */
    c = *++cptr;
    if (c == EOF)
	FUNC5();

    for (;;)
    {
	if (FUNC2(c))
	{
	    if (assoc == EXPECT)
		SRexpect = FUNC0();
	    else
		RRexpect = FUNC0();
	    break;
	}
	/*
	 * Looking for number before EOL.
	 * Spaces, tabs, and numbers are ok,
	 * words, punc., etc. are syntax errors.
	 */
	else if (c == '\n' || FUNC1(c) || !FUNC3(c))
	{
	    FUNC4(lineno, line, cptr);
	}
	else
	{
	    c = *++cptr;
	    if (c == EOF)
		FUNC5();
	}
    }
}