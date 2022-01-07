
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_15__ {int value; int fixed; } ;
union iwreq_data {TYPE_1__ bitrate; } ;
struct net_device {TYPE_10__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
typedef int UINT32 ;
struct TYPE_21__ {void* MCS; } ;
struct TYPE_22__ {TYPE_7__ field; } ;
struct TYPE_23__ {TYPE_8__ DesiredTransmitSetting; int bAutoTxRateSwitch; } ;
struct TYPE_20__ {TYPE_5__* Content; } ;
struct TYPE_17__ {scalar_t__ MODE; } ;
struct TYPE_18__ {TYPE_3__ field; } ;
struct TYPE_19__ {TYPE_4__ HTPhyMode; } ;
struct TYPE_16__ {scalar_t__ PhyMode; } ;
struct TYPE_14__ {TYPE_9__ StaCfg; TYPE_6__ MacTab; TYPE_2__ CommonCfg; } ;
typedef TYPE_10__* PRTMP_ADAPTER ;


 size_t BSSID_WCID ;
 int DBGPRINT (int ,char*) ;
 int ENETDOWN ;
 int EOPNOTSUPP ;
 int FALSE ;
 void* MCS_AUTO ;
 scalar_t__ MODE_OFDM ;
 scalar_t__ PHY_11G ;
 int RTMPSetDesiredRates (TYPE_10__*,int) ;
 int RTMP_TEST_FLAG (TYPE_10__*,int ) ;
 int RT_DEBUG_TRACE ;
 int SetCommonHT (TYPE_10__*) ;
 int TRUE ;
 int fRTMP_ADAPTER_INTERRUPT_IN_USE ;

int rt_ioctl_siwrate(struct net_device *dev,
   struct iw_request_info *info,
   union iwreq_data *wrqu, char *extra)
{
    PRTMP_ADAPTER pAd = dev->ml_priv;
    UINT32 rate = wrqu->bitrate.value, fixed = wrqu->bitrate.fixed;


 if(!RTMP_TEST_FLAG(pAd, fRTMP_ADAPTER_INTERRUPT_IN_USE))
 {
    DBGPRINT(RT_DEBUG_TRACE, ("rt_ioctl_siwrate::Network is down!\n"));
     return -ENETDOWN;
 }

    DBGPRINT(RT_DEBUG_TRACE, ("rt_ioctl_siwrate::(rate = %d, fixed = %d)\n", rate, fixed));



    if (rate == -1)
    {

  pAd->StaCfg.DesiredTransmitSetting.field.MCS = MCS_AUTO;
  pAd->StaCfg.bAutoTxRateSwitch = TRUE;
  if ((pAd->CommonCfg.PhyMode <= PHY_11G) ||
      (pAd->MacTab.Content[BSSID_WCID].HTPhyMode.field.MODE <= MODE_OFDM))
   RTMPSetDesiredRates(pAd, -1);

  SetCommonHT(pAd);
    }
    else
    {
        if (fixed)
        {
         pAd->StaCfg.bAutoTxRateSwitch = FALSE;
            if ((pAd->CommonCfg.PhyMode <= PHY_11G) ||
                (pAd->MacTab.Content[BSSID_WCID].HTPhyMode.field.MODE <= MODE_OFDM))
                RTMPSetDesiredRates(pAd, rate);
            else
            {
                pAd->StaCfg.DesiredTransmitSetting.field.MCS = MCS_AUTO;
                SetCommonHT(pAd);
            }
            DBGPRINT(RT_DEBUG_TRACE, ("rt_ioctl_siwrate::(HtMcs=%d)\n",pAd->StaCfg.DesiredTransmitSetting.field.MCS));
        }
        else
        {

            return -EOPNOTSUPP;
        }
    }

    return 0;
}
