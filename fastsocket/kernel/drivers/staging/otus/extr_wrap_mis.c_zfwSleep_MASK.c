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
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int u32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(zdev_t* dev, u32_t ms)
{
    if (FUNC0() == 0)
    {
        FUNC1(ms);
    }
    else
    {
        int ii;
        int iter = 100000 * ms;

        for (ii = 0; ii < iter; ii++)
        {

        }
    }
}