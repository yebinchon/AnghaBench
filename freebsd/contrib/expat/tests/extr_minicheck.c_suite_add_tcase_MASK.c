#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* tests; } ;
struct TYPE_5__ {struct TYPE_5__* next_tcase; } ;
typedef  TYPE_1__ TCase ;
typedef  TYPE_2__ Suite ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(Suite *suite, TCase *tc) 
{
    FUNC0(suite != NULL);
    FUNC0(tc != NULL);
    FUNC0(tc->next_tcase == NULL);

    tc->next_tcase = suite->tests;
    suite->tests = tc;
}