
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct TYPE_5__ {TYPE_1__* staTable; } ;
struct TYPE_6__ {int frequency; TYPE_2__ ap; } ;
struct TYPE_4__ {size_t qosType; int rcCell; } ;


 int ZM_LV_3 ;
 TYPE_3__* wd ;
 int* zcRateToPhyCtrl ;
 int zfApFindSta (int *,int*) ;
 scalar_t__ zfRateCtrlGetTxRate (int *,int *,int*) ;
 int zm_msg2_mm (int ,char*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfApGetStaTxRateAndQosType(zdev_t* dev, u16_t* addr, u32_t* phyCtrl,
                                u8_t* qosType, u16_t* rcProbingFlag)
{
    u16_t id;
    u8_t rate;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    if ((id = zfApFindSta(dev, addr)) != 0xffff)
    {
        rate = (u8_t)zfRateCtrlGetTxRate(dev, &wd->ap.staTable[id].rcCell, rcProbingFlag);



        *phyCtrl = zcRateToPhyCtrl[rate];
        *qosType = wd->ap.staTable[id].qosType;
    }
    else
    {
        if (wd->frequency < 3000)
        {



            *phyCtrl = 0x00000F00;
        }
        else
        {



            *phyCtrl = 0x000B0F01;
        }
        *qosType = 0;
    }

    zmw_leave_critical_section(dev);

    zm_msg2_mm(ZM_LV_3, "PhyCtrl=", *phyCtrl);
    return;
}
