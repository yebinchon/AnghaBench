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
typedef  int u8 ;
struct r8192_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; scalar_t__ iw_mode; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_LINKED ; 
 scalar_t__ IW_MODE_ADHOC ; 
 scalar_t__ IW_MODE_INFRA ; 
 scalar_t__ IW_MODE_MASTER ; 
 int /*<<< orphan*/  MSR ; 
 int MSR_LINK_ADHOC ; 
 int MSR_LINK_MANAGED ; 
 int MSR_LINK_MASK ; 
 int MSR_LINK_MASTER ; 
 int MSR_LINK_NONE ; 
 int MSR_LINK_SHIFT ; 
 struct r8192_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC0(dev);
	u8 msr;

	msr  = FUNC1(dev, MSR);
	msr &= ~ MSR_LINK_MASK;

	/* do not change in link_state != WLAN_LINK_ASSOCIATED.
	 * msr must be updated if the state is ASSOCIATING.
	 * this is intentional and make sense for ad-hoc and
	 * master (see the create BSS/IBSS func)
	 */
	if (priv->ieee80211->state == IEEE80211_LINKED){

		if (priv->ieee80211->iw_mode == IW_MODE_INFRA)
			msr |= (MSR_LINK_MANAGED<<MSR_LINK_SHIFT);
		else if (priv->ieee80211->iw_mode == IW_MODE_ADHOC)
			msr |= (MSR_LINK_ADHOC<<MSR_LINK_SHIFT);
		else if (priv->ieee80211->iw_mode == IW_MODE_MASTER)
			msr |= (MSR_LINK_MASTER<<MSR_LINK_SHIFT);

	}else
		msr |= (MSR_LINK_NONE<<MSR_LINK_SHIFT);

	FUNC2(dev, MSR, msr);
}