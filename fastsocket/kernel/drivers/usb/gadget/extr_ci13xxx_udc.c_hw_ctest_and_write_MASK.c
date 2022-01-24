#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int cap; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 TYPE_1__ hw_bank ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static u32 FUNC3(u32 addr, u32 mask, u32 data)
{
	u32 reg = FUNC1(addr, ~0);

	FUNC2((reg & ~mask) | (data & mask), addr + hw_bank.cap);
	return (reg & mask) >> FUNC0(mask);
}