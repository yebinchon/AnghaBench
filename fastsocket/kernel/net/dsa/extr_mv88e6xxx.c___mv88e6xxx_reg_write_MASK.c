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
typedef  int u16 ;
struct mii_bus {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mii_bus*,int,int,int) ; 
 int FUNC1 (struct mii_bus*,int) ; 

int FUNC2(struct mii_bus *bus, int sw_addr, int addr,
			  int reg, u16 val)
{
	int ret;

	if (sw_addr == 0)
		return FUNC0(bus, addr, reg, val);

	/*
	 * Wait for the bus to become free.
	 */
	ret = FUNC1(bus, sw_addr);
	if (ret < 0)
		return ret;

	/*
	 * Transmit the data to write.
	 */
	ret = FUNC0(bus, sw_addr, 1, val);
	if (ret < 0)
		return ret;

	/*
	 * Transmit the write command.
	 */
	ret = FUNC0(bus, sw_addr, 0, 0x9400 | (addr << 5) | reg);
	if (ret < 0)
		return ret;

	/*
	 * Wait for the write command to complete.
	 */
	ret = FUNC1(bus, sw_addr);
	if (ret < 0)
		return ret;

	return 0;
}