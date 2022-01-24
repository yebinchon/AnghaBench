#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {TYPE_4__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_10__ {int AutoReconnectSsidLen; int /*<<< orphan*/  CurrReqIsFromNdis; } ;
struct TYPE_8__ {scalar_t__ CurrState; } ;
struct TYPE_9__ {TYPE_1__ CntlMachine; } ;
struct TYPE_11__ {TYPE_3__ MlmeAux; TYPE_2__ Mlme; } ;
typedef  TYPE_4__* PRTMP_ADAPTER ;
typedef  int /*<<< orphan*/ * NDIS_802_11_MAC_ADDRESS ;

/* Variables and functions */
 scalar_t__ CNTL_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ENETDOWN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MAC_ADDR_LEN ; 
 int /*<<< orphan*/  MLME_CNTL_STATE_MACHINE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OID_802_11_BSSID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 
 int /*<<< orphan*/  fRTMP_ADAPTER_INTERRUPT_IN_USE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct net_device *dev,
		      struct iw_request_info *info,
		      struct sockaddr *ap_addr, char *extra)
{
	PRTMP_ADAPTER pAdapter = dev->ml_priv;
    NDIS_802_11_MAC_ADDRESS Bssid;

	//check if the interface is down
	if(!FUNC3(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
	{
       	FUNC0(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
       	return -ENETDOWN;
    }

	if (pAdapter->Mlme.CntlMachine.CurrState != CNTL_IDLE)
    {
        FUNC2(pAdapter);
        FUNC0(RT_DEBUG_TRACE, ("!!! MLME busy, reset MLME state machine !!!\n"));
    }

    // tell CNTL state machine to call NdisMSetInformationComplete() after completing
    // this request, because this request is initiated by NDIS.
    pAdapter->MlmeAux.CurrReqIsFromNdis = FALSE;
	// Prevent to connect AP again in STAMlmePeriodicExec
	pAdapter->MlmeAux.AutoReconnectSsidLen= 32;

    FUNC5(Bssid, 0, MAC_ADDR_LEN);
    FUNC4(Bssid, ap_addr->sa_data, MAC_ADDR_LEN);
    FUNC1(pAdapter,
                MLME_CNTL_STATE_MACHINE,
                OID_802_11_BSSID,
                sizeof(NDIS_802_11_MAC_ADDRESS),
                (VOID *)&Bssid);

    FUNC0(RT_DEBUG_TRACE, ("IOCTL::SIOCSIWAP %02x:%02x:%02x:%02x:%02x:%02x\n",
        Bssid[0], Bssid[1], Bssid[2], Bssid[3], Bssid[4], Bssid[5]));

	return 0;
}