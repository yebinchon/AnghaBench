#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct r8192_priv {int OpMode; int ReceiveConfig; TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int* bssid; } ;
struct TYPE_5__ {TYPE_1__ current_network; int /*<<< orphan*/  state; } ;
typedef  int RT_OP_MODE ;

/* Variables and functions */
 scalar_t__ BSSIDR ; 
 int /*<<< orphan*/  IEEE80211_NOLINK ; 
 int /*<<< orphan*/  MSR ; 
 int MSR_LINK_ADHOC ; 
 int MSR_LINK_MANAGED ; 
 int MSR_LINK_MASTER ; 
 int MSR_LINK_NONE ; 
 scalar_t__ RCR ; 
 int RCR_CBSSID ; 
#define  RT_OP_MODE_AP 130 
#define  RT_OP_MODE_IBSS 129 
#define  RT_OP_MODE_INFRASTRUCTURE 128 
 int RT_OP_MODE_NO_LINK ; 
 struct r8192_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(
	struct net_device* dev
)
{
	struct r8192_priv *priv = FUNC0(dev);
	//RT_OP_MODE	OpMode;
	u8			i;
	bool	bFilterOutNonAssociatedBSSID = false;

	//IEEE80211_DEBUG(IEEE80211_DL_TRACE, "XXXXXXXXXX MgntDisconnect IBSS\n");

	priv->ieee80211->state = IEEE80211_NOLINK;

//	PlatformZeroMemory( pMgntInfo->Bssid, 6 );
	for(i=0;i<6;i++)  priv->ieee80211->current_network.bssid[i]= 0x55;
	priv->OpMode = RT_OP_MODE_NO_LINK;
	FUNC7(dev, BSSIDR, ((u16*)priv->ieee80211->current_network.bssid)[0]);
	FUNC6(dev, BSSIDR+2, ((u32*)(priv->ieee80211->current_network.bssid+2))[0]);
	{
			RT_OP_MODE	OpMode = priv->OpMode;
			//LED_CTL_MODE	LedAction = LED_CTL_NO_LINK;
			u8	btMsr = FUNC3(dev, MSR);

			btMsr &= 0xfc;

			switch(OpMode)
			{
			case RT_OP_MODE_INFRASTRUCTURE:
				btMsr |= MSR_LINK_MANAGED;
				//LedAction = LED_CTL_LINK;
				break;

			case RT_OP_MODE_IBSS:
				btMsr |= MSR_LINK_ADHOC;
				// led link set seperate
				break;

			case RT_OP_MODE_AP:
				btMsr |= MSR_LINK_MASTER;
				//LedAction = LED_CTL_LINK;
				break;

			default:
				btMsr |= MSR_LINK_NONE;
				break;
			}

			FUNC5(dev, MSR, btMsr);

			// LED control
			//Adapter->HalFunc.LedControlHandler(Adapter, LedAction);
	}
	FUNC1(priv->ieee80211);

	// If disconnect, clear RCR CBSSID bit
	bFilterOutNonAssociatedBSSID = false;
	{
			u32 RegRCR, Type;
			Type = bFilterOutNonAssociatedBSSID;
			RegRCR = FUNC4(dev,RCR);
			priv->ReceiveConfig = RegRCR;
			if (Type == true)
				RegRCR |= (RCR_CBSSID);
			else if (Type == false)
				RegRCR &= (~RCR_CBSSID);

			{
				FUNC6(dev, RCR,RegRCR);
				priv->ReceiveConfig = RegRCR;
			}

		}
	//MgntIndicateMediaStatus( Adapter, RT_MEDIA_DISCONNECT, GENERAL_INDICATE );
	FUNC2(priv->ieee80211);

}