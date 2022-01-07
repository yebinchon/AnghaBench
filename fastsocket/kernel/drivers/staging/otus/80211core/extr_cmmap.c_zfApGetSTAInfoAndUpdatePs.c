
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_5__ {int uapsdQ; TYPE_1__* staTable; int staPowerSaving; } ;
struct TYPE_6__ {TYPE_2__ ap; int tick; } ;
struct TYPE_4__ {scalar_t__ psMode; int qosType; int qosInfo; int vap; int state; int time; } ;


 int ZM_EXTERNAL_ALLOC_BUF ;
 int ZM_LV_0 ;
 TYPE_3__* wd ;
 int zfApFindSta (int *,int*) ;
 int * zfQueueGetWithMac (int *,int ,int*,int*) ;
 int zfTxSendEth (int *,int *,int ,int ,int ) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfApGetSTAInfoAndUpdatePs(zdev_t* dev, u16_t* addr, u16_t* state,
                                u8_t* vap, u16_t psMode, u8_t* uapsdTrig)
{
    u16_t id;
    u8_t uapsdStaAwake = 0;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);





    if ((id = zfApFindSta(dev, addr)) != 0xffff)
    {
        if (psMode != 0)
        {
            zm_msg0_mm(ZM_LV_0, "psMode = 1");
            if (wd->ap.staTable[id].psMode == 0)
            {
                wd->ap.staPowerSaving++;
            }
            else
            {
                if (wd->ap.staTable[id].qosType == 1)
                {
                    zm_msg0_mm(ZM_LV_0, "UAPSD trigger");
                    *uapsdTrig = wd->ap.staTable[id].qosInfo;
                }
            }
        }
        else
        {
            if (wd->ap.staTable[id].psMode != 0)
            {
                wd->ap.staPowerSaving--;
                if ((wd->ap.staTable[id].qosType == 1) && ((wd->ap.staTable[id].qosInfo&0xf)!=0))
                {
                    uapsdStaAwake = 1;
                }
            }
        }

        wd->ap.staTable[id].psMode = (u8_t) psMode;
        wd->ap.staTable[id].time = wd->tick;
        *vap = wd->ap.staTable[id].vap;
        *state = wd->ap.staTable[id++].state;
    }

    zmw_leave_critical_section(dev);

    if (uapsdStaAwake == 1)
    {
        zbuf_t* psBuf;
        u8_t mb;

        while (1)
        {
            if ((psBuf = zfQueueGetWithMac(dev, wd->ap.uapsdQ, (u8_t*)addr, &mb)) != ((void*)0))
            {
                zfTxSendEth(dev, psBuf, 0, ZM_EXTERNAL_ALLOC_BUF, 0);
            }
            else
            {
                break;
            }
        }
    }

    return id;
}
