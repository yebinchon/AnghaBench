#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct TYPE_16__ {int value; int fixed; } ;
union iwreq_data {TYPE_1__ bitrate; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
typedef  int UINT32 ;
struct TYPE_22__ {void* MCS; } ;
struct TYPE_23__ {TYPE_7__ field; } ;
struct TYPE_24__ {TYPE_8__ DesiredTransmitSetting; int /*<<< orphan*/  bAutoTxRateSwitch; } ;
struct TYPE_21__ {TYPE_5__* Content; } ;
struct TYPE_18__ {scalar_t__ MODE; } ;
struct TYPE_19__ {TYPE_3__ field; } ;
struct TYPE_20__ {TYPE_4__ HTPhyMode; } ;
struct TYPE_17__ {scalar_t__ PhyMode; } ;
struct TYPE_15__ {TYPE_9__ StaCfg; TYPE_6__ MacTab; TYPE_2__ CommonCfg; } ;
typedef  TYPE_10__* PRTMP_ADAPTER ;

/* Variables and functions */
 size_t BSSID_WCID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ENETDOWN ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FALSE ; 
 void* MCS_AUTO ; 
 scalar_t__ MODE_OFDM ; 
 scalar_t__ PHY_11G ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*,int) ; 
 TYPE_10__* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_DEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  fRTMP_ADAPTER_INTERRUPT_IN_USE ; 

int FUNC5(struct net_device *dev,
			struct iw_request_info *info,
			union iwreq_data *wrqu, char *extra)
{
    PRTMP_ADAPTER   pAd = FUNC2(dev);
    UINT32          rate = wrqu->bitrate.value, fixed = wrqu->bitrate.fixed;

    //check if the interface is down
	if(!FUNC3(pAd, fRTMP_ADAPTER_INTERRUPT_IN_USE))
	{
		FUNC0(RT_DEBUG_TRACE, ("rt_ioctl_siwrate::Network is down!\n"));
	return -ENETDOWN;
	}

    FUNC0(RT_DEBUG_TRACE, ("rt_ioctl_siwrate::(rate = %d, fixed = %d)\n", rate, fixed));
    /* rate = -1 => auto rate
       rate = X, fixed = 1 => (fixed rate X)
    */
    if (rate == -1)
    {
        //Auto Rate
        pAd->StaCfg.DesiredTransmitSetting.field.MCS = MCS_AUTO;
		pAd->StaCfg.bAutoTxRateSwitch = TRUE;
		if ((pAd->CommonCfg.PhyMode <= PHY_11G) ||
		    (pAd->MacTab.Content[BSSID_WCID].HTPhyMode.field.MODE <= MODE_OFDM))
            FUNC1(pAd, -1);

#ifdef DOT11_N_SUPPORT
            SetCommonHT(pAd);
#endif // DOT11_N_SUPPORT //
    }
    else
    {
        if (fixed)
        {
		pAd->StaCfg.bAutoTxRateSwitch = FALSE;
            if ((pAd->CommonCfg.PhyMode <= PHY_11G) ||
                (pAd->MacTab.Content[BSSID_WCID].HTPhyMode.field.MODE <= MODE_OFDM))
                FUNC1(pAd, rate);
            else
            {
                pAd->StaCfg.DesiredTransmitSetting.field.MCS = MCS_AUTO;
#ifdef DOT11_N_SUPPORT
                SetCommonHT(pAd);
#endif // DOT11_N_SUPPORT //
            }
            FUNC0(RT_DEBUG_TRACE, ("rt_ioctl_siwrate::(HtMcs=%d)\n",pAd->StaCfg.DesiredTransmitSetting.field.MCS));
        }
        else
        {
            // TODO: rate = X, fixed = 0 => (rates <= X)
            return -EOPNOTSUPP;
        }
    }

    return 0;
}