
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
struct zsHpPriv {struct zsAniState* curani; } ;
struct zsAniState {scalar_t__ rssiThrHigh; scalar_t__ rssiThrLow; scalar_t__ firstepLevel; scalar_t__ spurImmunityLevel; scalar_t__ noiseImmunityLevel; scalar_t__ ofdmWeakSigDetectOff; } ;
typedef scalar_t__ s32_t ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;


 scalar_t__ BEACON_RSSI (int *) ;
 scalar_t__ TRUE ;
 int ZM_HAL_ANI_FIRSTEP_LEVEL ;
 int ZM_HAL_ANI_NOISE_IMMUNITY_LEVEL ;
 int ZM_HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION ;
 int ZM_HAL_ANI_SPUR_IMMUNITY_LEVEL ;
 TYPE_1__* wd ;
 int zfHpAniControl (int *,int ,scalar_t__) ;
 int zmw_get_wlan_dev (int *) ;

void zfHpAniLowerImmunity(zdev_t* dev)
{
    struct zsAniState *aniState;
    s32_t rssi;
    struct zsHpPriv *HpPriv;

    zmw_get_wlan_dev(dev);
    HpPriv = (struct zsHpPriv*)wd->hpPrivate;
    aniState = HpPriv->curani;

    rssi = BEACON_RSSI(dev);
    if (rssi > aniState->rssiThrHigh)
    {




    }
    else if (rssi > aniState->rssiThrLow)
    {




        if (aniState->ofdmWeakSigDetectOff)
        {
            zfHpAniControl(dev, ZM_HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION, TRUE);
            return;
        }
        if (aniState->firstepLevel > 0)
        {
            zfHpAniControl(dev, ZM_HAL_ANI_FIRSTEP_LEVEL, aniState->firstepLevel - 1);
            return;
        }
    }
    else
    {



        if (aniState->firstepLevel > 0)
        {
            zfHpAniControl(dev, ZM_HAL_ANI_FIRSTEP_LEVEL, aniState->firstepLevel - 1);
            return;
        }
    }

    if (aniState->spurImmunityLevel > 0)
    {
        zfHpAniControl(dev, ZM_HAL_ANI_SPUR_IMMUNITY_LEVEL, aniState->spurImmunityLevel - 1);
        return;
    }




    if (aniState->noiseImmunityLevel > 0)
    {
        zfHpAniControl(dev, ZM_HAL_ANI_NOISE_IMMUNITY_LEVEL, aniState->noiseImmunityLevel - 1);
        return;
    }
}
