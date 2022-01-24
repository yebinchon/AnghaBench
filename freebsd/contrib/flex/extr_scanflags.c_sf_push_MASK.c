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
typedef  int /*<<< orphan*/  scanflags_t ;

/* Variables and functions */
 int _sf_max ; 
 int /*<<< orphan*/ * _sf_stk ; 
 int _sf_top_ix ; 
 scalar_t__ FUNC0 (void*,int) ; 

void
FUNC1 (void)
{
    if (_sf_top_ix + 1 >= _sf_max)
        _sf_stk = (scanflags_t*) FUNC0 ( (void*) _sf_stk, sizeof(scanflags_t) * (_sf_max += 32));

    // copy the top element
    _sf_stk[_sf_top_ix + 1] = _sf_stk[_sf_top_ix];
    ++_sf_top_ix;
}