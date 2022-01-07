
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef size_t u16_t ;
struct TYPE_3__ {size_t uniHead; size_t uniTail; size_t* bcmcHead; size_t* bcmcTail; int *** bcmcArray; int ** uniArray; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;


 int ZM_BCMC_ARRAY_SIZE ;
 int ZM_ERR_FLUSH_PS_QUEUE ;
 size_t ZM_MAX_AP_SUPPORT ;
 int ZM_UNI_ARRAY_SIZE ;
 TYPE_2__* wd ;
 int zfwBufFree (int *,int *,int ) ;
 int zm_assert (int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfApFlushBufferedPsFrame(zdev_t* dev)
{
    u16_t emptyFlag;
    u16_t freeCount;
    u16_t vap;
    zbuf_t* psBuf = ((void*)0);
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    freeCount = 0;
    emptyFlag = 0;
    while (1)
    {
        psBuf = ((void*)0);
        zmw_enter_critical_section(dev);
        if (wd->ap.uniHead != wd->ap.uniTail)
        {
            psBuf = wd->ap.uniArray[wd->ap.uniHead];
            wd->ap.uniHead = (wd->ap.uniHead + 1) & (ZM_UNI_ARRAY_SIZE - 1);
        }
        else
        {
            emptyFlag = 1;
        }
        zmw_leave_critical_section(dev);

        if (psBuf != ((void*)0))
        {
            zfwBufFree(dev, psBuf, ZM_ERR_FLUSH_PS_QUEUE);
        }
        zm_assert(freeCount++ < (ZM_UNI_ARRAY_SIZE*2));

        if (emptyFlag != 0)
        {
            break;
        }
    }

    for (vap=0; vap<ZM_MAX_AP_SUPPORT; vap++)
    {
        freeCount = 0;
        emptyFlag = 0;
        while (1)
        {
            psBuf = ((void*)0);
            zmw_enter_critical_section(dev);
            if (wd->ap.bcmcHead[vap] != wd->ap.bcmcTail[vap])
            {
                psBuf = wd->ap.bcmcArray[vap][wd->ap.bcmcHead[vap]];
                wd->ap.bcmcHead[vap] = (wd->ap.bcmcHead[vap] + 1)
                        & (ZM_BCMC_ARRAY_SIZE - 1);
            }
            else
            {
                emptyFlag = 1;
            }
            zmw_leave_critical_section(dev);

            if (psBuf != ((void*)0))
            {
                zfwBufFree(dev, psBuf, ZM_ERR_FLUSH_PS_QUEUE);
            }
            zm_assert(freeCount++ < (ZM_BCMC_ARRAY_SIZE*2));

            if (emptyFlag != 0)
            {
                break;
            }
        }
    }
    return;
}
