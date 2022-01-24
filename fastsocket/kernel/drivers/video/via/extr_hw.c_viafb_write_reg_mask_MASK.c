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
typedef  int u8 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

void FUNC2(u8 index, int io_port, u8 data, u8 mask)
{
	u8 tmp;

	FUNC1(index, io_port);
	tmp = FUNC0(io_port + 1);
	FUNC1((data & mask) | (tmp & (~mask)), io_port + 1);
	/*DEBUG_MSG(KERN_INFO "\nIndex=%2d Value=%2d", index, tmp); */
}