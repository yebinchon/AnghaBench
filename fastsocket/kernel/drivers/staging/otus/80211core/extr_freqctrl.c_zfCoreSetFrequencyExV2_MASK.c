#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* zfpFreqChangeCompleteCb ) (int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  zdev_t ;
typedef  scalar_t__ u8_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct TYPE_3__ {scalar_t__ currentBw40; scalar_t__ currentExtOffset; scalar_t__ flagFreqChanging; int /*<<< orphan*/  connPowerInHalfDbm; int /*<<< orphan*/  currentFrequency; } ;
struct TYPE_4__ {TYPE_1__ sta; int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_1 ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(zdev_t* dev, u16_t frequency, u8_t bw40,
        u8_t extOffset, zfpFreqChangeCompleteCb cb, u8_t forceSetFreq)
{
    u8_t setFreqImmed = 0;
    u8_t initRF = 0;
    FUNC9(dev);
    FUNC7();

    FUNC6(ZM_LV_1, "Freq=", frequency);

    FUNC8(dev);
    if ((wd->sta.currentFrequency == frequency)
        && (wd->sta.currentBw40 == bw40)
        && (wd->sta.currentExtOffset == extOffset))
    {
        if ( forceSetFreq == 0 && wd->sta.flagFreqChanging == 0 )
        {
            goto done;
        }
    }
#ifdef ZM_FB50
    /*if(frequency!=2437) {
        zmw_leave_critical_section(dev);
        return;
    }*/
#endif

    FUNC0(dev, frequency, bw40, extOffset, cb);

//    zm_assert( wd->sta.flagFreqChanging == 0 );
    //wd->sta.flagFreqChanging = 1;
    if ( wd->sta.flagFreqChanging == 0 )
    {
        if ((wd->sta.currentBw40 != bw40) || (wd->sta.currentExtOffset != extOffset))
        {
            initRF = 1;
        }
        wd->sta.currentFrequency = frequency;
        wd->sta.currentBw40 = bw40;
        wd->sta.currentExtOffset = extOffset;
        setFreqImmed = 1;
    }
    wd->sta.flagFreqChanging++;

    FUNC10(dev);

    if ( setFreqImmed )
    {
        //zfHpSetFrequency(dev, frequency, 0);
        if ( forceSetFreq )
        { // Cold reset to reset the frequency after scanning !
            FUNC5("#6_1 20070917");
            FUNC5("It is happen!!! No error message");
            FUNC2(dev, frequency, bw40, extOffset, 2);
        }
        else
        {
        FUNC2(dev, frequency, bw40, extOffset, initRF);
        }

        if (    FUNC4(dev)
             && (frequency == wd->frequency)) {
            wd->sta.connPowerInHalfDbm = FUNC1(dev);
        }
    }
    return;

done:
    FUNC10(dev);

    if ( cb != NULL )
    {
        cb(dev);
    }
    FUNC3(dev);
    return;
}