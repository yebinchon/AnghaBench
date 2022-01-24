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
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 

uint32_t
FUNC1(uint32_t x)
{
	uint32_t y;

	y = 2 - x;
	y *= 2 - y * x;
	y *= 2 - y * x;
	y *= 2 - y * x;
	y *= 2 - y * x;
	return FUNC0(x & 1, -y, 0) & 0x7FFFFFFF;
}