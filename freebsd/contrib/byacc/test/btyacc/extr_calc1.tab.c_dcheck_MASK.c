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
struct TYPE_3__ {int hi; int lo; } ;
typedef  TYPE_1__ INTERVAL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

int
FUNC1(INTERVAL v)
{
    if (v.hi >= 0. && v.lo <= 0.)
    {
	FUNC0("divisor  interval  contains  0.\n");
	return (1);
    }
    return (0);
}