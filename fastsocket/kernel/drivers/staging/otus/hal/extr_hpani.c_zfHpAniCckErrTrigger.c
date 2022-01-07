
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
struct zsHpPriv {int procPhyErr; struct zsAniState* curani; } ;
struct zsAniState {scalar_t__ noiseImmunityLevel; scalar_t__ rssiThrLow; scalar_t__ firstepLevel; } ;
typedef scalar_t__ s32_t ;
struct TYPE_2__ {int frequency; scalar_t__ hpPrivate; } ;


 scalar_t__ BEACON_RSSI (int *) ;
 int ZM_HAL_ANI_FIRSTEP_LEVEL ;
 int ZM_HAL_ANI_NOISE_IMMUNITY_LEVEL ;
 scalar_t__ ZM_HAL_FIRST_STEP_MAX ;
 scalar_t__ ZM_HAL_NOISE_IMMUNE_MAX ;
 int ZM_HAL_PROCESS_ANI ;
 TYPE_1__* wd ;
 int zfHpAniControl (int *,int ,scalar_t__) ;
 int zmw_get_wlan_dev (int *) ;

void zfHpAniCckErrTrigger(zdev_t* dev)
{
    struct zsAniState *aniState;
    s32_t rssi;
    struct zsHpPriv *HpPriv;

    zmw_get_wlan_dev(dev);
    HpPriv = (struct zsHpPriv*)wd->hpPrivate;



    if ((HpPriv->procPhyErr & ZM_HAL_PROCESS_ANI) == 0)
        return;


    aniState = HpPriv->curani;
    if (aniState->noiseImmunityLevel < ZM_HAL_NOISE_IMMUNE_MAX)
    {
        zfHpAniControl(dev, ZM_HAL_ANI_NOISE_IMMUNITY_LEVEL,
                 aniState->noiseImmunityLevel + 1);
        return;
    }
    rssi = BEACON_RSSI(dev);
    if (rssi > aniState->rssiThrLow)
    {



        if (aniState->firstepLevel < ZM_HAL_FIRST_STEP_MAX)
            zfHpAniControl(dev, ZM_HAL_ANI_FIRSTEP_LEVEL, aniState->firstepLevel + 1);
    }
    else
    {




        if (wd->frequency < 3000)
        {
            if (aniState->firstepLevel > 0)
                zfHpAniControl(dev, ZM_HAL_ANI_FIRSTEP_LEVEL, 0);
        }
    }
}
