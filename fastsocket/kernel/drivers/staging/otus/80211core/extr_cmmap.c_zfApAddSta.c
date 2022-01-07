
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef void* u8_t ;
typedef int u16_t ;
struct TYPE_5__ {TYPE_1__* staTable; } ;
struct TYPE_6__ {int frequency; TYPE_2__ ap; int tick; int (* zfcbApConnectNotify ) (int *,void**,int) ;} ;
struct TYPE_4__ {int state; int* addr; int valid; int encryMode; void* vap; int time; int rcCell; void* qosInfo; void* staType; void* qosType; } ;


 int ZM_LV_0 ;
 int ZM_LV_1 ;
 int ZM_LV_2 ;
 int ZM_NO_WEP ;
 int ZM_STATE_ASOC ;
 int ZM_STATE_AUTH ;
 int ZM_STATE_PREAUTH ;
 int stub1 (int *,void**,int) ;
 TYPE_3__* wd ;
 int zfApFindSta (int *,int*) ;
 int zfApGetNewSta (int *) ;
 int zfRateCtrlInitCell (int *,int *,void*,int,int) ;
 int zm_msg0_mm (int ,char*) ;
 int zm_msg1_mm (int ,char*,void*) ;
 int zm_msg2_mm (int ,char*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfApAddSta(zdev_t* dev, u16_t* addr, u16_t state, u16_t apId, u8_t type,
                 u8_t qosType, u8_t qosInfo)
{
    u16_t index;
    u16_t i;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zm_msg1_mm(ZM_LV_0, "STA type=", type);

    zmw_enter_critical_section(dev);

    if ((index = zfApFindSta(dev, addr)) != 0xffff)
    {
        zm_msg0_mm(ZM_LV_2, "found");

        if ((state == ZM_STATE_AUTH) || (state == ZM_STATE_PREAUTH))
        {
            wd->ap.staTable[index].state = state;
            wd->ap.staTable[index].time = wd->tick;
            wd->ap.staTable[index].vap = (u8_t)apId;
        }
        else if (state == ZM_STATE_ASOC)
        {
            if ((wd->ap.staTable[index].state == ZM_STATE_AUTH))

            {
                wd->ap.staTable[index].state = state;
                wd->ap.staTable[index].time = wd->tick;
                wd->ap.staTable[index].qosType = qosType;
                wd->ap.staTable[index].vap = (u8_t)apId;
                wd->ap.staTable[index].staType = type;
                wd->ap.staTable[index].qosInfo = qosInfo;

                if (wd->frequency < 3000)
                {

                    zfRateCtrlInitCell(dev, &wd->ap.staTable[index].rcCell, type, 1, 1);
                }
                else
                {

                    zfRateCtrlInitCell(dev, &wd->ap.staTable[index].rcCell, type, 0, 1);
                }

                if (wd->zfcbApConnectNotify != ((void*)0))
                {
                    wd->zfcbApConnectNotify(dev, (u8_t*)addr, apId);
                }
            }
            else
            {
                index = 0xffff;
            }
        }
    }
    else
    {
        zm_msg0_mm(ZM_LV_2, "Not found");
        if ((state == ZM_STATE_AUTH) || (state == ZM_STATE_PREAUTH))
        {

            index = zfApGetNewSta(dev);
            zm_msg2_mm(ZM_LV_1, "new STA index=", index);

            if (index != 0xffff)
            {
                for (i=0; i<3; i++)
                {
                    wd->ap.staTable[index].addr[i] = addr[i];
                }
                wd->ap.staTable[index].state = state;
                wd->ap.staTable[index].valid = 1;
                wd->ap.staTable[index].time = wd->tick;
                wd->ap.staTable[index].vap = (u8_t)apId;
                wd->ap.staTable[index].encryMode = ZM_NO_WEP;
            }
        }
    }

    zmw_leave_critical_section(dev);

    return index;
}
