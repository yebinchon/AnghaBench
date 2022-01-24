#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ failed; int num_test; char* name; struct TYPE_7__* next; } ;
typedef  TYPE_2__ sub_suite ;
struct TYPE_8__ {TYPE_2__* head; TYPE_1__* tail; } ;
typedef  TYPE_3__ abts_suite ;
struct TYPE_6__ {int /*<<< orphan*/  not_run; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ list_tests ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC3(abts_suite *suite)
{
    int count = 0;
    sub_suite *dptr;

    if (suite && suite->tail &&!suite->tail->not_run) {
        FUNC0(suite);
    }

    for (dptr = suite->head; dptr; dptr = dptr->next) {
        count += dptr->failed;
    }

    if (list_tests) {
        return 0;
    }

    if (count == 0) {
        FUNC2("All tests passed.\n");
        return 0;
    }

    dptr = suite->head;
    FUNC1(stdout, "%-15s\t\tTotal\tFail\tFailed %%\n", "Failed Tests");
    FUNC1(stdout, "===================================================\n");
    while (dptr != NULL) {
        if (dptr->failed != 0) {
            float percent = ((float)dptr->failed / (float)dptr->num_test);
            FUNC1(stdout, "%-15s\t\t%5d\t%4ld\t%6.2f%%\n", dptr->name, 
                    dptr->num_test, dptr->failed, percent * 100);
        }
        dptr = dptr->next;
    }
    return 1;
}