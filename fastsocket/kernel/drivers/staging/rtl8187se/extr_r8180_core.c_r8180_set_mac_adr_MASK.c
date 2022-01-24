#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct r8180_priv {int /*<<< orphan*/  wx_sem; scalar_t__ up; TYPE_2__* ieee80211; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_4__ {scalar_t__ iw_mode; TYPE_1__ current_network; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ IW_MODE_MASTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct r8180_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct net_device *dev, void *mac)
{
	struct r8180_priv *priv = FUNC1(dev);
	struct sockaddr *addr = mac;

	FUNC0(&priv->wx_sem);

	FUNC2(dev->dev_addr, addr->sa_data, ETH_ALEN);

	if(priv->ieee80211->iw_mode == IW_MODE_MASTER)
		FUNC2(priv->ieee80211->current_network.bssid, dev->dev_addr, ETH_ALEN);

	if (priv->up) {
		FUNC3(dev);
		FUNC4(dev);
	}

	FUNC5(&priv->wx_sem);

	return 0;
}