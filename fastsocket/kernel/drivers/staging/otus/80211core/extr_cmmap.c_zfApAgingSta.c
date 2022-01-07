
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
typedef size_t u16_t ;
struct TYPE_5__ {int staProbingTimeSec; size_t staPowerSaving; TYPE_1__* staTable; scalar_t__ staAgingTimeSec; scalar_t__ authSharing; scalar_t__ bStaAssociated; scalar_t__ gStaAssociated; } ;
struct TYPE_6__ {TYPE_2__ ap; scalar_t__ tick; } ;
struct TYPE_4__ {int valid; size_t* addr; scalar_t__ state; scalar_t__ psMode; scalar_t__ time; } ;


 int ZM_AUTH_TIMEOUT_MS ;
 int ZM_LV_0 ;
 size_t ZM_MAX_STA_SUPPORT ;
 int ZM_MS_PER_TICK ;
 int ZM_PREAUTH_TIMEOUT_MS ;
 scalar_t__ ZM_STATE_ASOC ;
 scalar_t__ ZM_STATE_AUTH ;
 scalar_t__ ZM_STATE_PREAUTH ;
 int ZM_TICK_PER_SECOND ;
 int ZM_WLAN_DATA_FRAME ;
 int ZM_WLAN_FRAME_TYPE_DEAUTH ;
 TYPE_3__* wd ;
 int zfSendMmFrame (int *,int ,size_t*,int,int ,int ) ;
 int zm_msg1_mm (int ,char*,size_t) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfApAgingSta(zdev_t* dev)
{
    u16_t i;
    u32_t deltaMs;
    u16_t addr[3];
    u16_t txFlag;
    u16_t psStaCount = 0;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    wd->ap.gStaAssociated = wd->ap.bStaAssociated = 0;

    for (i=0; i<ZM_MAX_STA_SUPPORT; i++)
    {
        txFlag = 0;
        zmw_enter_critical_section(dev);
        if (wd->ap.staTable[i].valid == 1)
        {
            addr[0] = wd->ap.staTable[i].addr[0];
            addr[1] = wd->ap.staTable[i].addr[1];
            addr[2] = wd->ap.staTable[i].addr[2];

            deltaMs = (u32_t)((u32_t)wd->tick-(u32_t)wd->ap.staTable[i].time)
                      * ZM_MS_PER_TICK;


            if ((wd->ap.staTable[i].state == ZM_STATE_PREAUTH)
                    && (deltaMs > ZM_PREAUTH_TIMEOUT_MS))
            {

                wd->ap.staTable[i].valid = 0;
                wd->ap.authSharing = 0;
                txFlag = 1;
            }


            if ((wd->ap.staTable[i].state == ZM_STATE_AUTH)
                    && (deltaMs > ZM_AUTH_TIMEOUT_MS))
            {

                wd->ap.staTable[i].valid = 0;
                txFlag = 1;
            }


            if (wd->ap.staTable[i].state == ZM_STATE_ASOC)
            {
                if (wd->ap.staTable[i].psMode != 0)
                {
                    psStaCount++;
                }

                if (deltaMs > ((u32_t)wd->ap.staAgingTimeSec<<10))
                {

                    zm_msg1_mm(ZM_LV_0, "Age STA index=", i);
                    wd->ap.staTable[i].valid = 0;
                    txFlag = 1;
                }
                else if (deltaMs > ((u32_t)wd->ap.staProbingTimeSec<<10))
                {
                    if (wd->ap.staTable[i].psMode == 0)
                    {

                        zm_msg1_mm(ZM_LV_0, "Probing STA index=", i);
                        wd->ap.staTable[i].time +=
                                (wd->ap.staProbingTimeSec * ZM_TICK_PER_SECOND);
                        txFlag = 2;
                    }
                }
            }


        }
        zmw_leave_critical_section(dev);

        if (txFlag == 1)
        {

            zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_DEAUTH, addr, 4, 0, 0);
        }
        else if (txFlag == 2)
        {
            zfSendMmFrame(dev, ZM_WLAN_DATA_FRAME, addr, 0, 0, 0);
        }

    }

    wd->ap.staPowerSaving = psStaCount;

    return;
}
