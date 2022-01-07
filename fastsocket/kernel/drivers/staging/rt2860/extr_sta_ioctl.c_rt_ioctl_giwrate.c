
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_24__ {int value; scalar_t__ disabled; } ;
union iwreq_data {TYPE_9__ bitrate; } ;
struct net_device {TYPE_10__* ml_priv; } ;
struct iw_request_info {int dummy; } ;
typedef int ralinkrate ;
typedef int __s32 ;
typedef int UCHAR ;
struct TYPE_23__ {scalar_t__ MODE; scalar_t__ MCS; scalar_t__ ShortGI; scalar_t__ BW; } ;
struct TYPE_22__ {TYPE_6__* Content; } ;
struct TYPE_17__ {scalar_t__ MODE; } ;
struct TYPE_20__ {int word; TYPE_2__ field; } ;
struct TYPE_21__ {TYPE_5__ HTPhyMode; } ;
struct TYPE_18__ {int word; } ;
struct TYPE_19__ {scalar_t__ bAutoTxRateSwitch; TYPE_3__ HTPhyMode; } ;
struct TYPE_16__ {scalar_t__ PhyMode; } ;
struct TYPE_15__ {TYPE_8__ field; int word; } ;
struct TYPE_14__ {TYPE_7__ MacTab; TYPE_4__ StaCfg; TYPE_1__ CommonCfg; } ;
typedef TYPE_10__* PRTMP_ADAPTER ;
typedef TYPE_11__ HTTRANSMIT_SETTING ;


 size_t BSSID_WCID ;
 int DBGPRINT (int ,char*) ;
 int ENETDOWN ;
 scalar_t__ FALSE ;
 scalar_t__ INFRA_ON (TYPE_10__*) ;
 scalar_t__ MODE_CCK ;
 scalar_t__ MODE_HTMIX ;
 scalar_t__ MODE_OFDM ;
 scalar_t__ PHY_11G ;
 int RTMP_TEST_FLAG (TYPE_10__*,int ) ;
 int RT_DEBUG_TRACE ;
 int fRTMP_ADAPTER_INTERRUPT_IN_USE ;

int rt_ioctl_giwrate(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
    PRTMP_ADAPTER pAd = dev->ml_priv;
    int rate_index = 0, rate_count = 0;
    HTTRANSMIT_SETTING ht_setting;
    __s32 ralinkrate[] =
 {2, 4, 11, 22,
 12, 18, 24, 36, 48, 72, 96, 108,
 13, 26, 39, 52, 78, 104, 117, 130, 26, 52, 78, 104, 156, 208, 234, 260,
 39, 78, 117, 156, 234, 312, 351, 390,
 27, 54, 81, 108, 162, 216, 243, 270, 54, 108, 162, 216, 324, 432, 486, 540,
 81, 162, 243, 324, 486, 648, 729, 810,
 14, 29, 43, 57, 87, 115, 130, 144, 29, 59, 87, 115, 173, 230, 260, 288,
 43, 87, 130, 173, 260, 317, 390, 433,
 30, 60, 90, 120, 180, 240, 270, 300, 60, 120, 180, 240, 360, 480, 540, 600,
 90, 180, 270, 360, 540, 720, 810, 900};

    rate_count = sizeof(ralinkrate)/sizeof(__s32);

 if(!RTMP_TEST_FLAG(pAd, fRTMP_ADAPTER_INTERRUPT_IN_USE))
 {
    DBGPRINT(RT_DEBUG_TRACE, ("INFO::Network is down!\n"));
     return -ENETDOWN;
 }

    if ((pAd->StaCfg.bAutoTxRateSwitch == FALSE) &&
        (INFRA_ON(pAd)) &&
        ((pAd->CommonCfg.PhyMode <= PHY_11G) || (pAd->MacTab.Content[BSSID_WCID].HTPhyMode.field.MODE <= MODE_OFDM)))
        ht_setting.word = pAd->StaCfg.HTPhyMode.word;
    else
        ht_setting.word = pAd->MacTab.Content[BSSID_WCID].HTPhyMode.word;

    if (ht_setting.field.MODE >= MODE_HTMIX)
    {
     rate_index = 12 + ((UCHAR)ht_setting.field.BW *24) + ((UCHAR)ht_setting.field.ShortGI *48) + ((UCHAR)ht_setting.field.MCS);
    }
    else
    if (ht_setting.field.MODE == MODE_OFDM)
     rate_index = (UCHAR)(ht_setting.field.MCS) + 4;
    else if (ht_setting.field.MODE == MODE_CCK)
     rate_index = (UCHAR)(ht_setting.field.MCS);

    if (rate_index < 0)
        rate_index = 0;

    if (rate_index > rate_count)
        rate_index = rate_count;

    wrqu->bitrate.value = ralinkrate[rate_index] * 500000;
    wrqu->bitrate.disabled = 0;

    return 0;
}
