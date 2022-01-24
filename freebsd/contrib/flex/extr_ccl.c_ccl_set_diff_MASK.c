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
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 () ; 
 int csize ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC5 (int a, int b)
{
    int  d, ch;

    /* create new class  */
    d = FUNC2();

    /* In order to handle negation, we spin through all possible chars,
     * addding each char in a that is not in b.
     * (This could be O(n^2), but n is small and bounded.)
     */
	for ( ch = 0; ch < csize; ++ch )
        if (FUNC0 (a, ch) && !FUNC0(b, ch))
            FUNC1 (d, ch);

    /* debug */
    if (0){
        FUNC4(stderr, "ccl_set_diff (");
            FUNC4(stderr, "\n    ");
            FUNC3 (stderr, a);
            FUNC4(stderr, "\n    ");
            FUNC3 (stderr, b);
            FUNC4(stderr, "\n    ");
            FUNC3 (stderr, d);
        FUNC4(stderr, "\n)\n");
    }
    return d;
}