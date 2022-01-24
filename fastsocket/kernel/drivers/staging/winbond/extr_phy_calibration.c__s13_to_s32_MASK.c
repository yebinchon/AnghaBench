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
typedef  int u32 ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int FUNC0 (int) ; 

s32 FUNC1(u32 data)
{
    u32     val;

    val = (data & 0x0FFF);

    if ((data & FUNC0(12)) != 0)
    {
        val |= 0xFFFFF000;
    }

    return ((s32) val);
}