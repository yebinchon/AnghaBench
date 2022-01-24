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
 int ETIMEDOUT ; 
 int FUNC0 (struct mii_bus*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct mii_bus *bus, int sw_addr)
{
	int ret;
	int i;

	for (i = 0; i < 16; i++) {
		ret = FUNC0(bus, sw_addr, 0);
		if (ret < 0)
			return ret;

		if ((ret & 0x8000) == 0)
			return 0;
	}

	return -ETIMEDOUT;
}