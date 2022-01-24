#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ failed; } ;
typedef  TYPE_1__ abts_case ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int const,int const) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ verbose ; 

void FUNC3(abts_case *tc, const int expected, const int actual, int lineno)
{
    FUNC2();
    if (tc->failed) return;

    if (expected != actual) return;

    tc->failed = TRUE;
    if (verbose) {
        FUNC1(stderr, "Line %d: expected something other than <%d>, but saw <%d>\n",
                lineno, expected, actual);
        FUNC0(stderr);
    }
}