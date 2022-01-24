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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mii_bus*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static char *FUNC2(struct mii_bus *bus, int sw_addr)
{
	int ret;

	ret = FUNC1(bus, sw_addr, FUNC0(0), 0x03);
	if (ret >= 0) {
		ret &= 0xfff0;
		if (ret == 0x1210)
			return "Marvell 88E6123";
		if (ret == 0x1610)
			return "Marvell 88E6161";
		if (ret == 0x1650)
			return "Marvell 88E6165";
	}

	return NULL;
}