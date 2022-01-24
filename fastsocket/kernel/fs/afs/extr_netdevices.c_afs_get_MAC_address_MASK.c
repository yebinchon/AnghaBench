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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 size_t ETH_ALEN ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(u8 *mac, size_t maclen)
{
	struct net_device *dev;
	int ret = -ENODEV;

	FUNC0(maclen != ETH_ALEN);

	FUNC3();
	dev = FUNC1(&init_net, ARPHRD_ETHER);
	if (dev) {
		FUNC2(mac, dev->dev_addr, maclen);
		ret = 0;
	}
	FUNC4();
	return ret;
}