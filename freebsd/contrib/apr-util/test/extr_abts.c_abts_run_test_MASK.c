#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* test_func ) (TYPE_1__*,void*) ;
struct TYPE_10__ {int /*<<< orphan*/  failed; int /*<<< orphan*/  num_test; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ sub_suite ;
struct TYPE_11__ {TYPE_2__* tail; } ;
typedef  TYPE_3__ abts_suite ;
struct TYPE_9__ {scalar_t__ failed; TYPE_2__* suite; } ;
typedef  TYPE_1__ abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(abts_suite *ts, test_func f, void *value)
{
    abts_case *tc;
    sub_suite *ss;

    if (!FUNC2(ts->tail->name)) {
        return;
    }
    ss = ts->tail;

    tc = FUNC1(sizeof(*tc));
    tc->failed = 0;
    tc->suite = ss;
    
    ss->num_test++;
    FUNC3();

    f(tc, value);
    
    if (tc->failed) {
        ss->failed++;
    }
    FUNC0(tc);
}