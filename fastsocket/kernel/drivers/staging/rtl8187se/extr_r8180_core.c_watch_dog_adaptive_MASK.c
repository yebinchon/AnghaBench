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
struct TYPE_4__ {scalar_t__ expires; } ;
struct r8180_priv {TYPE_2__ watch_dog_timer; TYPE_1__* ieee80211; int /*<<< orphan*/  up; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  GPIOChangeRFWorkItem; int /*<<< orphan*/  wq; int /*<<< orphan*/  hw_dig_wq; int /*<<< orphan*/  tx_pw_wq; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  IEEE80211_WATCH_DOG_TIME ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 struct r8180_priv* FUNC7 (struct net_device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

void FUNC10(unsigned long data)
{
	struct r8180_priv* priv = FUNC7((struct net_device *)data);

	if (!priv->up) {
		FUNC3("<----watch_dog_adaptive():driver is not up!\n");
		return;
	}

	// Tx High Power Mechanism.
#ifdef HIGH_POWER
	if(CheckHighPower((struct net_device *)data))
	{
		queue_work(priv->ieee80211->wq, (void *)&priv->ieee80211->tx_pw_wq);
	}
#endif

	// Tx Power Tracking on 87SE.
#ifdef TX_TRACK
	//if( priv->bTxPowerTrack )	//lzm mod 080826
	if( CheckTxPwrTracking((struct net_device *)data));
		TxPwrTracking87SE((struct net_device *)data);
#endif

	// Perform DIG immediately.
#ifdef SW_DIG
	if(CheckDig((struct net_device *)data) == true)
	{
		queue_work(priv->ieee80211->wq, (void *)&priv->ieee80211->hw_dig_wq);
	}
#endif
   	FUNC9((struct net_device *)data);

	FUNC8(priv->ieee80211->wq, (void *)&priv->ieee80211->GPIOChangeRFWorkItem);

   	priv->watch_dog_timer.expires = jiffies + FUNC4(IEEE80211_WATCH_DOG_TIME);
	FUNC6(&priv->watch_dog_timer);
}