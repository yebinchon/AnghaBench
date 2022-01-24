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
typedef  int uint16_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 

uint16_t
FUNC2(uint16_t x)
{
	uint32_t y;

	y = 2 - x;
	y = FUNC0(y, 2 - FUNC0(x, y));
	y = FUNC0(y, 2 - FUNC0(x, y));
	y = FUNC0(y, 2 - FUNC0(x, y));
	return FUNC1(x & 1, -y, 0) & 0x7FFF;
}