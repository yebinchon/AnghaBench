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
struct r8180_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ mode; } ;

/* Variables and functions */
 scalar_t__ IEEE_A ; 
 int RF_PARA ; 
 int RF_TIMING ; 
 struct r8180_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,int) ; 

void FUNC5(struct net_device *dev)
{
	struct r8180_priv *priv = FUNC0(dev);

	if (priv->ieee80211->mode == IEEE_A) {
		FUNC4(dev, 0x5, 0x1865);
		FUNC2(dev, RF_PARA, 0x10084);
		FUNC2(dev, RF_TIMING, 0xa8008);
		FUNC3(dev, 0x0, 0x0);
		FUNC3(dev, 0xa, 0x6);
		FUNC3(dev, 0xb, 0x99);
		FUNC3(dev, 0xf, 0x20);
		FUNC3(dev, 0x11, 0x7);

		FUNC1(dev,4);

		FUNC3(dev,0x15, 0x40);
		FUNC3(dev,0x17, 0x40);

		FUNC2(dev, 0x94,0x10000000);
	} else {
		FUNC4(dev, 0x5, 0x1864);
		FUNC2(dev, RF_PARA, 0x10044);
		FUNC2(dev, RF_TIMING, 0xa8008);
		FUNC3(dev, 0x0, 0x1);
		FUNC3(dev, 0xa, 0x6);
		FUNC3(dev, 0xb, 0x99);
		FUNC3(dev, 0xf, 0x20);
		FUNC3(dev, 0x11, 0x7);

		FUNC1(dev,4);

		FUNC3(dev,0x15, 0x40);
		FUNC3(dev,0x17, 0x40);

		FUNC2(dev, 0x94,0x04000002);
	}
}