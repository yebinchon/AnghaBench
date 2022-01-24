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
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ appbase ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

void FUNC3(void)
{
	uint32_t val;

	val = FUNC1(appbase + 0x00000210);
	val |= 0x1;
	FUNC2(val, appbase + 0x00000210);
	FUNC0(10);

	val = FUNC1(appbase + 0x00000210);
	val &= ~0x1;
	FUNC2(val, appbase + 0x00000210);
	FUNC0(10);
}