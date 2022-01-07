
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct TYPE_6__ {size_t oppositeCount; TYPE_1__* oppositeInfo; } ;
struct TYPE_8__ {scalar_t__ wlanMode; TYPE_2__ sta; } ;
struct TYPE_7__ {size_t* operationRateSet; } ;
struct TYPE_5__ {TYPE_3__ rcCell; int macAddr; } ;


 int ZM_MAC_WORD_TO_BYTE (int *,size_t*) ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 TYPE_4__* wd ;
 int * zcRateToPhyCtrl ;
 scalar_t__ zfMemoryIsEqual (size_t*,int ,int) ;
 scalar_t__ zfRateCtrlGetTxRate (int *,TYPE_3__*,int *) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfStaGetTxRate(zdev_t* dev, u16_t* macAddr, u32_t* phyCtrl,
        u16_t* rcProbingFlag)
{
    u8_t addr[6], i;
    u8_t rate;
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    ZM_MAC_WORD_TO_BYTE(macAddr, addr);
    *phyCtrl = 0;

    if ( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
    {
        zmw_enter_critical_section(dev);
        rate = (u8_t)zfRateCtrlGetTxRate(dev, &wd->sta.oppositeInfo[0].rcCell, rcProbingFlag);



        *phyCtrl = zcRateToPhyCtrl[rate];
        zmw_leave_critical_section(dev);
    }
    else
    {
        zmw_enter_critical_section(dev);
        for(i=0; i<wd->sta.oppositeCount; i++)
        {
            if ( addr[0] && 0x01 == 1 )

            {

                rate = wd->sta.oppositeInfo[i].rcCell.operationRateSet[0];
                *phyCtrl = zcRateToPhyCtrl[rate];
                break;
            }
            else if ( zfMemoryIsEqual(addr, wd->sta.oppositeInfo[i].macAddr, 6) )
            {
                rate = (u8_t)zfRateCtrlGetTxRate(dev, &wd->sta.oppositeInfo[i].rcCell, rcProbingFlag);
                *phyCtrl = zcRateToPhyCtrl[rate];
                break;
            }
        }
        zmw_leave_critical_section(dev);
    }

    return;
}
