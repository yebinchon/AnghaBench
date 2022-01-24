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
struct r8180_priv {int up; TYPE_1__* ieee80211; scalar_t__ bSwAntennaDiverity; scalar_t__ bInactivePs; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iw_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ IW_MODE_ADHOC ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct r8180_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 

int FUNC10(struct net_device *dev)
{
	struct r8180_priv *priv = FUNC3(dev);

	priv->up=1;

	FUNC0("Bringing up iface");
	FUNC5(dev);
	FUNC6(dev);
	FUNC7(dev);
	if(priv->bInactivePs){
		if(priv->ieee80211->iw_mode == IW_MODE_ADHOC)
			FUNC1(dev);
	}
#ifdef RATE_ADAPT
       timer_rate_adaptive((unsigned long)dev);
#endif
	FUNC9((unsigned long)dev);
#ifdef SW_ANTE
        if(priv->bSwAntennaDiverity)
			SwAntennaDiversityTimerCallback(dev);
#endif
	FUNC4(priv->ieee80211);

	return 0;
}