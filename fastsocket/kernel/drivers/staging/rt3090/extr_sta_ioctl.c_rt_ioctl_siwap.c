
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
typedef int VOID ;
struct TYPE_11__ {int AutoReconnectSsidLen; int CurrReqIsFromNdis; } ;
struct TYPE_9__ {scalar_t__ CurrState; } ;
struct TYPE_10__ {TYPE_1__ CntlMachine; } ;
struct TYPE_12__ {TYPE_3__ MlmeAux; TYPE_2__ Mlme; } ;
typedef TYPE_4__* PRTMP_ADAPTER ;
typedef int * NDIS_802_11_MAC_ADDRESS ;


 scalar_t__ CNTL_IDLE ;
 int DBGPRINT (int ,char*) ;
 int ENETDOWN ;
 int FALSE ;
 int MAC_ADDR_LEN ;
 int MLME_CNTL_STATE_MACHINE ;
 int MlmeEnqueue (TYPE_4__*,int ,int ,int,int *) ;
 int OID_802_11_BSSID ;
 int RTMP_MLME_RESET_STATE_MACHINE (TYPE_4__*) ;
 TYPE_4__* RTMP_OS_NETDEV_GET_PRIV (struct net_device*) ;
 int RTMP_TEST_FLAG (TYPE_4__*,int ) ;
 int RT_DEBUG_TRACE ;
 int fRTMP_ADAPTER_INTERRUPT_IN_USE ;
 int memcpy (int *,int ,int ) ;
 int memset (int *,int ,int ) ;

int rt_ioctl_siwap(struct net_device *dev,
        struct iw_request_info *info,
        struct sockaddr *ap_addr, char *extra)
{
 PRTMP_ADAPTER pAdapter = RTMP_OS_NETDEV_GET_PRIV(dev);
    NDIS_802_11_MAC_ADDRESS Bssid;


 if(!RTMP_TEST_FLAG(pAdapter, fRTMP_ADAPTER_INTERRUPT_IN_USE))
 {
 DBGPRINT(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
 return -ENETDOWN;
    }

 if (pAdapter->Mlme.CntlMachine.CurrState != CNTL_IDLE)
    {
        RTMP_MLME_RESET_STATE_MACHINE(pAdapter);
        DBGPRINT(RT_DEBUG_TRACE, ("!!! MLME busy, reset MLME state machine !!!\n"));
    }



    pAdapter->MlmeAux.CurrReqIsFromNdis = FALSE;

 pAdapter->MlmeAux.AutoReconnectSsidLen= 32;

    memset(Bssid, 0, MAC_ADDR_LEN);
    memcpy(Bssid, ap_addr->sa_data, MAC_ADDR_LEN);
    MlmeEnqueue(pAdapter,
                MLME_CNTL_STATE_MACHINE,
                OID_802_11_BSSID,
                sizeof(NDIS_802_11_MAC_ADDRESS),
                (VOID *)&Bssid);

    DBGPRINT(RT_DEBUG_TRACE, ("IOCTL::SIOCSIWAP %02x:%02x:%02x:%02x:%02x:%02x\n",
        Bssid[0], Bssid[1], Bssid[2], Bssid[3], Bssid[4], Bssid[5]));

 return 0;
}
