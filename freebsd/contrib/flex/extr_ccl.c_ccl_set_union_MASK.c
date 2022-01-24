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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int* ccllen ; 
 int* cclmap ; 
 int /*<<< orphan*/ * ccltbl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC4 (int a, int b)
{
    int  d, i;

    /* create new class  */
    d = FUNC1();

    /* Add all of a */
    for (i = 0; i < ccllen[a]; ++i)
		FUNC0 (d, ccltbl[cclmap[a] + i]);

    /* Add all of b */
    for (i = 0; i < ccllen[b]; ++i)
		FUNC0 (d, ccltbl[cclmap[b] + i]);

    /* debug */
    if (0){
        FUNC3(stderr, "ccl_set_union (%d + %d = %d", a, b, d);
            FUNC3(stderr, "\n    ");
            FUNC2 (stderr, a);
            FUNC3(stderr, "\n    ");
            FUNC2 (stderr, b);
            FUNC3(stderr, "\n    ");
            FUNC2 (stderr, d);
        FUNC3(stderr, "\n)\n");
    }
    return d;
}