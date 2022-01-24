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

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(u32 reg, u32 mask, u32 data)
{
	u32 val = FUNC0(reg);

	val &= ~mask;
	val |= data & mask;

	return FUNC1(reg, val);
}