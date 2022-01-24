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
struct TYPE_3__ {int /*<<< orphan*/  mmio; } ;
typedef  TYPE_1__ vortex_t ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(vortex_t * vortex, u32 wt, u32 stereo)
{
	int temp;

	//temp = hwread(vortex->mmio, 0x80 + ((wt >> 0x5)<< 0xf) + (((wt & 0x1f) >> 1) << 2));
	temp = FUNC1(vortex->mmio, FUNC0(wt));
	temp = (temp & 0xfe) | (stereo & 1);
	//hwwrite(vortex->mmio, 0x80 + ((wt >> 0x5)<< 0xf) + (((wt & 0x1f) >> 1) << 2), temp);
	FUNC2(vortex->mmio, FUNC0(wt), temp);
}