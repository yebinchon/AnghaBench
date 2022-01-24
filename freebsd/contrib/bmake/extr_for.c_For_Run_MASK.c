#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  items; } ;
typedef  TYPE_1__ For ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  For_Iterate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* accumFor ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(int lineno)
{ 
    For *arg;
  
    arg = accumFor;
    accumFor = NULL;

    if (FUNC2(&arg->items) == 0) {
        /* Nothing to expand - possibly due to an earlier syntax error. */
        FUNC0(arg);
        return;
    }
 
    FUNC1(NULL, lineno, -1, For_Iterate, arg);
}