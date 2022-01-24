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
struct mii_bus {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mii_bus*,int,int) ; 
 int FUNC1 (struct mii_bus*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mii_bus*,int) ; 

int FUNC3(struct mii_bus *bus, int sw_addr, int addr, int reg)
{
	int ret;

	if (sw_addr == 0)
		return FUNC0(bus, addr, reg);

	/*
	 * Wait for the bus to become free.
	 */
	ret = FUNC2(bus, sw_addr);
	if (ret < 0)
		return ret;

	/*
	 * Transmit the read command.
	 */
	ret = FUNC1(bus, sw_addr, 0, 0x9800 | (addr << 5) | reg);
	if (ret < 0)
		return ret;

	/*
	 * Wait for the read command to complete.
	 */
	ret = FUNC2(bus, sw_addr);
	if (ret < 0)
		return ret;

	/*
	 * Read the data.
	 */
	ret = FUNC0(bus, sw_addr, 1);
	if (ret < 0)
		return ret;

	return ret & 0xffff;
}