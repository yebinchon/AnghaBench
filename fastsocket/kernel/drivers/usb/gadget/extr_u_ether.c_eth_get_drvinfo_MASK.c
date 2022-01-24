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
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;
struct eth_dev {TYPE_1__* gadget; } ;
struct TYPE_2__ {char* name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 char* UETH__VERSION ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 struct eth_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC3(struct net_device *net, struct ethtool_drvinfo *p)
{
	struct eth_dev	*dev = FUNC1(net);

	FUNC2(p->driver, "g_ether", sizeof p->driver);
	FUNC2(p->version, UETH__VERSION, sizeof p->version);
	FUNC2(p->fw_version, dev->gadget->name, sizeof p->fw_version);
	FUNC2(p->bus_info, FUNC0(&dev->gadget->dev), sizeof p->bus_info);
}