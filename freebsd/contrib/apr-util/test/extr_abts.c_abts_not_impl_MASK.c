#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* suite; } ;
typedef  TYPE_2__ abts_case ;
struct TYPE_4__ {int /*<<< orphan*/  not_impl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ verbose ; 

void FUNC3(abts_case *tc, const char *message, int lineno)
{
    FUNC2();

    tc->suite->not_impl++;
    if (verbose) {
        FUNC1(stderr, "Line %d: %s\n", lineno, message);
        FUNC0(stderr);
    }
}