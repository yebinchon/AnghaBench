#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; scalar_t__ cb; } ;
struct rtl8192_rx_info {struct net_device* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  numpacket_toself; int /*<<< orphan*/  numpacket_matchbssid; } ;
struct r8192_priv {TYPE_4__ stats; TYPE_3__* ieee80211; } ;
struct net_device {int /*<<< orphan*/ * dev_addr; } ;
struct ieee80211_rx_stats {int /*<<< orphan*/  bICV; int /*<<< orphan*/  bCRC; int /*<<< orphan*/  bHwError; } ;
struct ieee80211_hdr_3addr {int /*<<< orphan*/ * addr3; int /*<<< orphan*/ * addr2; int /*<<< orphan*/ * addr1; int /*<<< orphan*/  frame_ctl; } ;
typedef  int /*<<< orphan*/  rx_drvinfo_819x_usb ;
typedef  int /*<<< orphan*/  rx_desc_819x_usb ;
typedef  struct rtl8192_rx_info rtl8192_rx_info ;
struct TYPE_5__ {int /*<<< orphan*/ * bssid; } ;
struct TYPE_7__ {TYPE_2__* dev; TYPE_1__ current_network; } ;
struct TYPE_6__ {int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ IEEE80211_FCTL_FROMDS ; 
 scalar_t__ IEEE80211_FCTL_TODS ; 
 scalar_t__ IEEE80211_FTYPE_CTL ; 
 scalar_t__ IEEE80211_STYPE_BEACON ; 
 scalar_t__ IEEE80211_STYPE_BLOCKACK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct r8192_priv*,struct ieee80211_rx_stats*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ieee80211_rx_stats*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct r8192_priv*,int /*<<< orphan*/ *,struct ieee80211_rx_stats*,struct ieee80211_rx_stats*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_rx_stats*,struct ieee80211_rx_stats*) ; 

void FUNC8(struct sk_buff *skb,
				   struct ieee80211_rx_stats * pstats,
				   rx_desc_819x_usb	*pDesc,
                                   rx_drvinfo_819x_usb  *pdrvinfo)
{
	// TODO: We must only check packet for current MAC address. Not finish
	rtl8192_rx_info *info = (struct rtl8192_rx_info *)skb->cb;
	struct net_device *dev=info->dev;
	struct r8192_priv *priv = (struct r8192_priv *)FUNC3(dev);
	bool bpacket_match_bssid, bpacket_toself;
	bool bPacketBeacon=FALSE, bToSelfBA=FALSE;
	static struct ieee80211_rx_stats  previous_stats;
	struct ieee80211_hdr_3addr *hdr;//by amy
       u16 fc,type;

	// Get Signal Quality for only RX data queue (but not command queue)

	u8* tmp_buf;
	//u16 tmp_buf_len = 0;
	u8  *praddr;

	/* Get MAC frame start address. */
	tmp_buf = (u8*)skb->data;// + get_rxpacket_shiftbytes_819xusb(pstats);

	hdr = (struct ieee80211_hdr_3addr *)tmp_buf;
	fc = FUNC4(hdr->frame_ctl);
	type = FUNC1(fc);
	praddr = hdr->addr1;

	/* Check if the received packet is acceptabe. */
	bpacket_match_bssid = ((IEEE80211_FTYPE_CTL != type) &&
                                			(FUNC2(priv->ieee80211->current_network.bssid,  (fc & IEEE80211_FCTL_TODS)? hdr->addr1 : (fc & IEEE80211_FCTL_FROMDS )? hdr->addr2 : hdr->addr3))
                                				 && (!pstats->bHwError) && (!pstats->bCRC)&& (!pstats->bICV));
	bpacket_toself =  bpacket_match_bssid & (FUNC2(praddr, priv->ieee80211->dev->dev_addr));

#if 1//cosa
		if(FUNC0(fc)== IEEE80211_STYPE_BEACON)
		{
			bPacketBeacon = true;
			//DbgPrint("Beacon 2, MatchBSSID = %d, ToSelf = %d \n", bPacketMatchBSSID, bPacketToSelf);
		}
		if(FUNC0(fc) == IEEE80211_STYPE_BLOCKACK)
		{
			if((FUNC2(praddr,dev->dev_addr)))
				bToSelfBA = true;
				//DbgPrint("BlockAck, MatchBSSID = %d, ToSelf = %d \n", bPacketMatchBSSID, bPacketToSelf);
		}

#endif


	if(bpacket_match_bssid)
	{
		priv->stats.numpacket_matchbssid++;
	}
	if(bpacket_toself){
		priv->stats.numpacket_toself++;
	}
	//
	// Process PHY information for previous packet (RSSI/PWDB/EVM)
	//
	// Because phy information is contained in the last packet of AMPDU only, so driver
	// should process phy information of previous packet
	FUNC6(priv, tmp_buf, &previous_stats, pstats);
	FUNC5(priv, pstats, pDesc, pdrvinfo, &previous_stats, bpacket_match_bssid,bpacket_toself,bPacketBeacon,bToSelfBA);
	FUNC7(pstats, &previous_stats);

}