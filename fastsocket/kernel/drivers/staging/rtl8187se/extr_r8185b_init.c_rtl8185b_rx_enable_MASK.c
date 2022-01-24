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
struct r8180_priv {int ReceiveConfig; int crcmon; TYPE_1__* ieee80211; } ;
struct net_device {int flags; } ;
struct TYPE_2__ {scalar_t__ iw_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int CMD_RX_ENABLE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int IFF_PROMISC ; 
 scalar_t__ IW_MODE_MONITOR ; 
 int /*<<< orphan*/  RCR ; 
 int RCR_AAP ; 
 int RCR_ACF ; 
 int RCR_ACRC32 ; 
 int RCR_AICV ; 
 int RCR_APM ; 
 int RCR_APWRMGT ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct net_device *dev)
{
	u8 cmd;
	//u32 rxconf;
	/* for now we accept data, management & ctl frame*/
	struct r8180_priv *priv = (struct r8180_priv *)FUNC2(dev);

	if (dev->flags & IFF_PROMISC) FUNC0 ("NIC in promisc mode");

	if(priv->ieee80211->iw_mode == IW_MODE_MONITOR || \
	   dev->flags & IFF_PROMISC){
	   	priv->ReceiveConfig = priv->ReceiveConfig & (~RCR_APM);
		priv->ReceiveConfig = priv->ReceiveConfig | RCR_AAP;
	}

	/*if(priv->ieee80211->iw_mode == IW_MODE_MASTER){
		rxconf = rxconf | (1<<ACCEPT_ALLMAC_FRAME_SHIFT);
		rxconf = rxconf | (1<<RX_CHECK_BSSID_SHIFT);
	}*/

	if(priv->ieee80211->iw_mode == IW_MODE_MONITOR){
		priv->ReceiveConfig = priv->ReceiveConfig | RCR_ACF | RCR_APWRMGT | RCR_AICV;
	}

	if( priv->crcmon == 1 && priv->ieee80211->iw_mode == IW_MODE_MONITOR)
		priv->ReceiveConfig = priv->ReceiveConfig | RCR_ACRC32;

	FUNC6(dev, RCR, priv->ReceiveConfig);

	FUNC1(dev);

#ifdef DEBUG_RX
	DMESG("rxconf: %x %x",priv->ReceiveConfig ,read_nic_dword(dev,RCR));
#endif
	cmd=FUNC3(dev,CMD);
	FUNC5(dev,CMD,cmd | (1<<CMD_RX_ENABLE_SHIFT));

}