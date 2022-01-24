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
struct pmac_gpio {int addr; int active_state; int active_val; int inactive_val; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 long ENODEV ; 
 struct device_node* FUNC1 (char const*) ; 
 struct device_node* FUNC2 (char const*) ; 
 long FUNC3 (struct device_node*,int /*<<< orphan*/ ) ; 
 int* FUNC4 (struct device_node*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

__attribute__((used)) static long FUNC8(const char *device, const char *platform,
				struct pmac_gpio *gp, int is_compatible)
{
	struct device_node *node;
	const u32 *base;
	u32 addr;
	long ret;

	if (is_compatible)
		node = FUNC2(device);
	else
		node = FUNC1(device);
	if (! node) {
		FUNC0("(W) cannot find audio device %s !\n", device);
		FUNC7("cannot find device %s\n", device);
		return -ENODEV;
	}

	base = FUNC4(node, "AAPL,address", NULL);
	if (! base) {
		base = FUNC4(node, "reg", NULL);
		if (!base) {
			FUNC0("(E) cannot find address for device %s !\n", device);
			FUNC6("cannot find address for device %s\n", device);
			FUNC5(node);
			return -ENODEV;
		}
		addr = *base;
		if (addr < 0x50)
			addr += 0x50;
	} else
		addr = *base;

	gp->addr = addr & 0x0000ffff;
	/* Try to find the active state, default to 0 ! */
	base = FUNC4(node, "audio-gpio-active-state", NULL);
	if (base) {
		gp->active_state = *base;
		gp->active_val = (*base) ? 0x5 : 0x4;
		gp->inactive_val = (*base) ? 0x4 : 0x5;
	} else {
		const u32 *prop = NULL;
		gp->active_state = 0;
		gp->active_val = 0x4;
		gp->inactive_val = 0x5;
		/* Here are some crude hacks to extract the GPIO polarity and
		 * open collector informations out of the do-platform script
		 * as we don't yet have an interpreter for these things
		 */
		if (platform)
			prop = FUNC4(node, platform, NULL);
		if (prop) {
			if (prop[3] == 0x9 && prop[4] == 0x9) {
				gp->active_val = 0xd;
				gp->inactive_val = 0xc;
			}
			if (prop[3] == 0x1 && prop[4] == 0x1) {
				gp->active_val = 0x5;
				gp->inactive_val = 0x4;
			}
		}
	}

	FUNC0("(I) GPIO device %s found, offset: %x, active state: %d !\n",
	    device, gp->addr, gp->active_state);

	ret = FUNC3(node, 0);
	FUNC5(node);
	return ret;
}