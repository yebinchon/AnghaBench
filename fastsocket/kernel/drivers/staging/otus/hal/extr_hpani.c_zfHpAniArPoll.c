
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u32_t ;
struct TYPE_3__ {int ast_ani_cckerrs; int ast_ani_ofdmerrs; } ;
struct zsHpPriv {int procPhyErr; int aniPeriod; TYPE_1__ stats; scalar_t__ hasHwPhyCounters; struct zsAniState* curani; } ;
struct zsAniState {int listenTime; int ofdmPhyErrCount; int cckPhyErrCount; int ofdmTrigLow; int cckTrigLow; int ofdmTrigHigh; int cckTrigHigh; } ;
struct TYPE_4__ {scalar_t__ hpPrivate; } ;


 int ZM_HAL_PROCESS_ANI ;
 TYPE_2__* wd ;
 int zfHpAniCckErrTrigger (int *) ;
 int zfHpAniLowerImmunity (int *) ;
 int zfHpAniOfdmErrTrigger (int *) ;
 int zfHpAniRestart (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfHpAniArPoll(zdev_t* dev, u32_t listenTime, u32_t phyCnt1, u32_t phyCnt2)
{
    struct zsAniState *aniState;

    struct zsHpPriv *HpPriv;

    zmw_get_wlan_dev(dev);
    HpPriv = (struct zsHpPriv*)wd->hpPrivate;






    aniState = HpPriv->curani;
    aniState->listenTime += listenTime;

    if (HpPriv->hasHwPhyCounters)
    {

        u32_t ofdmPhyErrCnt, cckPhyErrCnt;
        ofdmPhyErrCnt = phyCnt1;
        HpPriv->stats.ast_ani_ofdmerrs += ofdmPhyErrCnt;
        aniState->ofdmPhyErrCount += ofdmPhyErrCnt;




        cckPhyErrCnt = phyCnt2;
        HpPriv->stats.ast_ani_cckerrs += cckPhyErrCnt;
        aniState->cckPhyErrCount += cckPhyErrCnt;
    }




    if ((HpPriv->procPhyErr & ZM_HAL_PROCESS_ANI) == 0)
        return;
    if (aniState->listenTime > 5 * HpPriv->aniPeriod)
    {




        if (aniState->ofdmPhyErrCount <= aniState->listenTime *
             aniState->ofdmTrigLow/1000 &&
            aniState->cckPhyErrCount <= aniState->listenTime *
             aniState->cckTrigLow/1000)
            zfHpAniLowerImmunity(dev);
        zfHpAniRestart(dev);
    }
    else if (aniState->listenTime > HpPriv->aniPeriod)
    {

        if (aniState->ofdmPhyErrCount > aniState->listenTime *
            aniState->ofdmTrigHigh / 1000)
        {
            zfHpAniOfdmErrTrigger(dev);
            zfHpAniRestart(dev);
        }
        else if (aniState->cckPhyErrCount > aniState->listenTime *
               aniState->cckTrigHigh / 1000)
        {
            zfHpAniCckErrTrigger(dev);
            zfHpAniRestart(dev);
        }
    }
}
