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
struct TYPE_2__ {scalar_t__ state; scalar_t__ iw_mode; int /*<<< orphan*/  current_network; } ;

/* Variables and functions */
 int /*<<< orphan*/  CW_VAL ; 
 int /*<<< orphan*/  DIFS ; 
 int /*<<< orphan*/  EIFS ; 
 scalar_t__ IEEE80211_LINKED ; 
 scalar_t__ IW_MODE_MONITOR ; 
 int /*<<< orphan*/  SIFS ; 
 int /*<<< orphan*/  SLOT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct r8180_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,short) ; 
 int /*<<< orphan*/ * rtl8225_chan ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev, short ch)
{
	struct r8180_priv *priv = FUNC3(dev);
	short gset = (priv->ieee80211->state == IEEE80211_LINKED &&
		FUNC1(priv->ieee80211->current_network)) ||
		priv->ieee80211->iw_mode == IW_MODE_MONITOR;

	FUNC5(dev, ch);

	FUNC7(dev, 0x7, rtl8225_chan[ch]);

	FUNC0(dev);
	FUNC4(10);

	if (gset) {
		FUNC6(dev, SIFS, 0x22);
		FUNC6(dev, DIFS, 0x14);
	} else {
		FUNC6(dev, SIFS, 0x44);
		FUNC6(dev, DIFS, 0x24);
	}

	if (priv->ieee80211->state == IEEE80211_LINKED &&
	    FUNC2(priv->ieee80211->current_network))
		FUNC6(dev, SLOT, 0x9);
	else
		FUNC6(dev, SLOT, 0x14);

	if (gset) {
		FUNC6(dev, EIFS, 81);
		FUNC6(dev, CW_VAL, 0x73);
	} else {
		FUNC6(dev, EIFS, 81);
		FUNC6(dev, CW_VAL, 0xa5);
	}
}