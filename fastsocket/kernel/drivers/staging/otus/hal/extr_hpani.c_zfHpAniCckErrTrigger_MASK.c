#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
struct zsHpPriv {int procPhyErr; struct zsAniState* curani; } ;
struct zsAniState {scalar_t__ noiseImmunityLevel; scalar_t__ rssiThrLow; scalar_t__ firstepLevel; } ;
typedef  scalar_t__ s32_t ;
struct TYPE_2__ {int frequency; scalar_t__ hpPrivate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ZM_HAL_ANI_FIRSTEP_LEVEL ; 
 int /*<<< orphan*/  ZM_HAL_ANI_NOISE_IMMUNITY_LEVEL ; 
 scalar_t__ ZM_HAL_FIRST_STEP_MAX ; 
 scalar_t__ ZM_HAL_NOISE_IMMUNE_MAX ; 
 int ZM_HAL_PROCESS_ANI ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(zdev_t* dev)
{
    struct zsAniState *aniState;
    s32_t rssi;
    struct zsHpPriv *HpPriv;

    FUNC2(dev);
    HpPriv = (struct zsHpPriv*)wd->hpPrivate;

    //HALASSERT(chan != NULL);

    if ((HpPriv->procPhyErr & ZM_HAL_PROCESS_ANI) == 0)
        return;

    /* first, raise noise immunity level, up to max */
    aniState = HpPriv->curani;
    if (aniState->noiseImmunityLevel < ZM_HAL_NOISE_IMMUNE_MAX)
    {
        FUNC1(dev, ZM_HAL_ANI_NOISE_IMMUNITY_LEVEL,
                 aniState->noiseImmunityLevel + 1);
        return;
    }
    rssi = FUNC0(dev);
    if (rssi >  aniState->rssiThrLow)
    {
        /*
         * Beacon signal in mid and high range, raise firsteplevel.
         */
        if (aniState->firstepLevel < ZM_HAL_FIRST_STEP_MAX)
            FUNC1(dev, ZM_HAL_ANI_FIRSTEP_LEVEL, aniState->firstepLevel + 1);
    }
    else
    {
        /*
         * Beacon rssi is low, zero firstepLevel to maximize
         * CCK sensitivity.
         */
        if (wd->frequency < 3000)
        {
            if (aniState->firstepLevel > 0)
                FUNC1(dev, ZM_HAL_ANI_FIRSTEP_LEVEL, 0);
        }
    }
}