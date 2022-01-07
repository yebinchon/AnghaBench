
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
struct zsHpPriv {scalar_t__ hasHwPhyCounters; struct zsAniState* curani; } ;
struct zsAniState {scalar_t__ cckPhyErrCount; scalar_t__ ofdmPhyErrCount; scalar_t__ cckPhyErrBase; scalar_t__ ofdmPhyErrBase; scalar_t__ listenTime; } ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;


 TYPE_1__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfHpAniRestart(zdev_t* dev)
{
    struct zsAniState *aniState;
    struct zsHpPriv *HpPriv;

    zmw_get_wlan_dev(dev);
    HpPriv = (struct zsHpPriv*)wd->hpPrivate;
    aniState = HpPriv->curani;

    aniState->listenTime = 0;
    if (HpPriv->hasHwPhyCounters)
    {
        aniState->ofdmPhyErrBase = 0;
        aniState->cckPhyErrBase = 0;
    }
    aniState->ofdmPhyErrCount = 0;
    aniState->cckPhyErrCount = 0;
}
