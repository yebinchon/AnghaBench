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
typedef  int /*<<< orphan*/  bucket ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int NUL ; 
 int /*<<< orphan*/  cache ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ cinc ; 
 int* cptr ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bucket *
FUNC5(void)
{
    int c;

    cinc = 0;
    for (c = *cptr; FUNC0(c); c = *++cptr)
	FUNC1(c);
    FUNC1(NUL);

    if (FUNC2(cache))
	FUNC4(cache);

    return (FUNC3(cache));
}