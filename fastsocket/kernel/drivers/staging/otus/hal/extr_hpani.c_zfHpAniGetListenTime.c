
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u32_t ;
struct TYPE_3__ {int ast_ani_lzero; } ;
struct zsHpPriv {TYPE_1__ stats; struct zsAniState* curani; } ;
struct zsAniState {scalar_t__ cycleCount; scalar_t__ rxFrameCount; scalar_t__ txFrameCount; } ;
typedef int s32_t ;
struct TYPE_4__ {scalar_t__ hpPrivate; } ;


 int CLOCK_RATE ;
 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

s32_t zfHpAniGetListenTime(zdev_t* dev)
{
    struct zsAniState *aniState;
    u32_t txFrameCount, rxFrameCount, cycleCount;
    s32_t listenTime;
    struct zsHpPriv *HpPriv;

    zmw_get_wlan_dev(dev);
    HpPriv = (struct zsHpPriv*)wd->hpPrivate;

    txFrameCount = 0;
    rxFrameCount = 0;
    cycleCount = 0;

    aniState = HpPriv->curani;
    if (aniState->cycleCount == 0 || aniState->cycleCount > cycleCount)
    {





        listenTime = 0;
        HpPriv->stats.ast_ani_lzero++;
    }
    else
    {
        s32_t ccdelta = cycleCount - aniState->cycleCount;
        s32_t rfdelta = rxFrameCount - aniState->rxFrameCount;
        s32_t tfdelta = txFrameCount - aniState->txFrameCount;
        listenTime = (ccdelta - rfdelta - tfdelta) / CLOCK_RATE;
    }
    aniState->cycleCount = cycleCount;
    aniState->txFrameCount = txFrameCount;
    aniState->rxFrameCount = rxFrameCount;
    return listenTime;
}
