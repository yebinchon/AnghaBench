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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies_64 ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(unsigned long ticks)
{
	jiffies_64 += ticks;
	FUNC1();
	FUNC0();
}