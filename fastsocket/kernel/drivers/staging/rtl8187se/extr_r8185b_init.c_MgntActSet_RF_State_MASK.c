#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct r8180_priv {int RFChangeInProgress; int eRFPowerState; int /*<<< orphan*/  rf_ps_lock; int /*<<< orphan*/  RfOffReason; int /*<<< orphan*/  bInHctTest; } ;
struct net_device {int dummy; } ;
typedef  int RT_RF_POWER_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_CHANGE_BY_HW ; 
 int /*<<< orphan*/  RF_CHANGE_BY_IPS ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  disas_lv_ss ; 
#define  eRfOff 130 
#define  eRfOn 129 
#define  eRfSleep 128 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

bool
FUNC9(
	struct net_device *dev,
	RT_RF_POWER_STATE	StateToSet,
	u32	ChangeSource
	)
{
	struct r8180_priv *priv = (struct r8180_priv *)FUNC4(dev);
	bool				bActionAllowed = false;
	bool				bConnectBySSID = false;
	RT_RF_POWER_STATE 	rtState;
	u16				RFWaitCounter = 0;
	unsigned long flag;
//	 printk("===>MgntActSet_RF_State(): StateToSet(%d), ChangeSource(0x%x)\n",StateToSet, ChangeSource);
	//
	// Prevent the race condition of RF state change. By Bruce, 2007-11-28.
	// Only one thread can change the RF state at one time, and others should wait to be executed.
	//
#if 1
	while(true)
	{
//		down(&priv->rf_state);
		FUNC6(&priv->rf_ps_lock,flag);
		if(priv->RFChangeInProgress)
		{
//			printk("====================>haha111111111\n");
//			up(&priv->rf_state);
//			RT_TRACE(COMP_RF, DBG_LOUD, ("MgntActSet_RF_State(): RF Change in progress! Wait to set..StateToSet(%d).\n", StateToSet));
			FUNC7(&priv->rf_ps_lock,flag);
			// Set RF after the previous action is done.
			while(priv->RFChangeInProgress)
			{
				RFWaitCounter ++;
//				RT_TRACE(COMP_RF, DBG_LOUD, ("MgntActSet_RF_State(): Wait 1 ms (%d times)...\n", RFWaitCounter));
				FUNC8(1000); // 1 ms

				// Wait too long, return FALSE to avoid to be stuck here.
				if(RFWaitCounter > 1000) // 1sec
				{
//					RT_ASSERT(FALSE, ("MgntActSet_RF_State(): Wait too logn to set RF\n"));
					FUNC5("MgntActSet_RF_State(): Wait too long to set RF\n");
					// TODO: Reset RF state?
					return false;
				}
			}
		}
		else
		{
//			printk("========================>haha2\n");
			priv->RFChangeInProgress = true;
//			up(&priv->rf_state);
			FUNC7(&priv->rf_ps_lock,flag);
			break;
		}
	}
#endif
	rtState = priv->eRFPowerState;


	switch(StateToSet)
	{
	case eRfOn:
		//
		// Turn On RF no matter the IPS setting because we need to update the RF state to Ndis under Vista, or
		// the Windows does not allow the driver to perform site survey any more. By Bruce, 2007-10-02.
		//
		priv->RfOffReason &= (~ChangeSource);

		if(! priv->RfOffReason)
		{
			priv->RfOffReason = 0;
			bActionAllowed = true;

			if(rtState == eRfOff && ChangeSource >=RF_CHANGE_BY_HW && !priv->bInHctTest)
			{
				bConnectBySSID = true;
			}
		}
		else
//			RT_TRACE(COMP_RF, DBG_LOUD, ("MgntActSet_RF_State - eRfon reject pMgntInfo->RfOffReason= 0x%x, ChangeSource=0x%X\n", pMgntInfo->RfOffReason, ChangeSource));
			;
		break;

	case eRfOff:
		 // 070125, rcnjko: we always keep connected in AP mode.

			if (priv->RfOffReason > RF_CHANGE_BY_IPS)
			{
				//
				// 060808, Annie:
				// Disconnect to current BSS when radio off. Asked by QuanTa.
				//

				//
				// Calling MgntDisconnect() instead of MgntActSet_802_11_DISASSOCIATE(),
				// because we do NOT need to set ssid to dummy ones.
				// Revised by Roger, 2007.12.04.
				//
				FUNC2( dev, disas_lv_ss );

				// Clear content of bssDesc[] and bssDesc4Query[] to avoid reporting old bss to UI.
				// 2007.05.28, by shien chang.
//				PlatformZeroMemory( pMgntInfo->bssDesc, sizeof(RT_WLAN_BSS)*MAX_BSS_DESC );
//				pMgntInfo->NumBssDesc = 0;
//				PlatformZeroMemory( pMgntInfo->bssDesc4Query, sizeof(RT_WLAN_BSS)*MAX_BSS_DESC );
//				pMgntInfo->NumBssDesc4Query = 0;
			}



		priv->RfOffReason |= ChangeSource;
		bActionAllowed = true;
		break;

	case eRfSleep:
		priv->RfOffReason |= ChangeSource;
		bActionAllowed = true;
		break;

	default:
		break;
	}

	if(bActionAllowed)
	{
//		RT_TRACE(COMP_RF, DBG_LOUD, ("MgntActSet_RF_State(): Action is allowed.... StateToSet(%d), RfOffReason(%#X)\n", StateToSet, pMgntInfo->RfOffReason));
                // Config HW to the specified mode.
//		printk("MgntActSet_RF_State(): Action is allowed.... StateToSet(%d), RfOffReason(%#X)\n", StateToSet, priv->RfOffReason);
		FUNC3(dev, StateToSet);

		// Turn on RF.
		if(StateToSet == eRfOn)
		{
			FUNC1(dev);
			if(bConnectBySSID)
			{
			// by amy not supported
//				MgntActSet_802_11_SSID(Adapter, Adapter->MgntInfo.Ssid.Octet, Adapter->MgntInfo.Ssid.Length, TRUE );
			}
		}
		// Turn off RF.
		else if(StateToSet == eRfOff)
		{
			FUNC0(dev);
		}
	}
	else
	{
	//	printk("MgntActSet_RF_State(): Action is rejected.... StateToSet(%d), ChangeSource(%#X), RfOffReason(%#X)\n", StateToSet, ChangeSource, priv->RfOffReason);
	}

	// Release RF spinlock
//	down(&priv->rf_state);
	FUNC6(&priv->rf_ps_lock,flag);
	priv->RFChangeInProgress = false;
//	up(&priv->rf_state);
	FUNC7(&priv->rf_ps_lock,flag);
//	printk("<===MgntActSet_RF_State()\n");
	return bActionAllowed;
}