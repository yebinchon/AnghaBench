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
typedef  scalar_t__ scanflags_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int _sf_max ; 
 scalar_t__* _sf_stk ; 
 size_t _sf_top_ix ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 

void
FUNC4 (void)
{
    FUNC1(_sf_stk == NULL);
    _sf_stk = (scanflags_t*) FUNC2 ( sizeof(scanflags_t) * (_sf_max = 32));
    if (!_sf_stk)
        FUNC3(FUNC0("Unable to allocate %ld of stack"),
            (void *)(uintptr_t)sizeof(scanflags_t));
    _sf_stk[_sf_top_ix] = 0;
}