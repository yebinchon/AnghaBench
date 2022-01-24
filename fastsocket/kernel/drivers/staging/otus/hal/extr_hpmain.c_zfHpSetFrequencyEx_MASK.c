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
typedef  int u8_t ;
typedef  scalar_t__ u32_t ;
typedef  scalar_t__ u16_t ;
struct zsHpPriv {int isSiteSurvey; int latestBw40; int latestExtOffset; scalar_t__ dot11Mode; scalar_t__ hwFrequency; int OpFlags; int hwBw40; int halCapability; int hwExtOffset; scalar_t__ strongRSSI; scalar_t__ rxStrongRSSI; scalar_t__ latestFrequency; scalar_t__ coldResetNeedFreq; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;

/* Variables and functions */
 scalar_t__ ZM_CH_G_1 ; 
 scalar_t__ ZM_CH_G_14 ; 
 scalar_t__ ZM_CH_G_2 ; 
 int ZM_CMD_BITAND ; 
 int ZM_CMD_FREQUENCY ; 
 int ZM_CMD_FREQ_STRAT ; 
 int ZM_CMD_RF_INIT ; 
 int /*<<< orphan*/  ZM_CMD_SET_FREQUENCY ; 
 scalar_t__ ZM_HAL_80211_MODE_IBSS_GENERAL ; 
 scalar_t__ ZM_HAL_80211_MODE_IBSS_WPA2PSK ; 
 int ZM_HP_CAP_11N_ONE_TX_STREAM ; 
 int /*<<< orphan*/  ZM_LV_1 ; 
 int ZM_MAC_REG_AC0_CW ; 
 int /*<<< orphan*/  ZM_OID_INTERNAL_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int,int,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(zdev_t* dev, u32_t frequency, u8_t bw40,
        u8_t extOffset, u8_t initRF)
{
    u32_t cmd[9];
    u32_t cmdB[3];
    u16_t ret;
    u8_t old_band;
    u8_t new_band;
    u32_t checkLoopCount;
    u32_t tmpValue;

    int delta_slope_coeff_exp;
    int delta_slope_coeff_man;
    int delta_slope_coeff_exp_shgi;
    int delta_slope_coeff_man_shgi;
    struct zsHpPriv* hpPriv;

    FUNC13(dev);
    hpPriv = wd->hpPrivate;

    FUNC12(ZM_LV_1, "Frequency = ", frequency);
    FUNC12(ZM_LV_1, "bw40 = ", bw40);
    FUNC12(ZM_LV_1, "extOffset = ", extOffset);

    if ( hpPriv->coldResetNeedFreq )
    {
        hpPriv->coldResetNeedFreq = 0;
        initRF = 2;
        FUNC10("zfHpSetFrequencyEx: Do ColdReset ");
    }
    if ( hpPriv->isSiteSurvey == 2 )
    {
        /* wait time for AGC and noise calibration : not in sitesurvey and connected */
        checkLoopCount = 2000; /* 2000*100 = 200ms */
    }
    else
    {
        /* wait time for AGC and noise calibration : in sitesurvey */
        checkLoopCount = 1000; /* 1000*100 = 100ms */
    }

    hpPriv->latestFrequency = frequency;
    hpPriv->latestBw40 = bw40;
    hpPriv->latestExtOffset = extOffset;

    if ((hpPriv->dot11Mode == ZM_HAL_80211_MODE_IBSS_GENERAL) ||
        (hpPriv->dot11Mode == ZM_HAL_80211_MODE_IBSS_WPA2PSK))
    {
        if ( frequency <= ZM_CH_G_14 )
        {
            /* workaround for 11g Ad Hoc beacon distribution */
            FUNC1(dev, ZM_MAC_REG_AC0_CW, 0x7f0007);
            //zfDelayWriteInternalReg(dev, ZM_MAC_REG_AC1_AC0_AIFS, 0x1c04901c);
        }
    }

    /* AHB, DAC, ADC clock selection by static20/ht2040 */
    FUNC6(dev, bw40, frequency);

    /* clear bb_heavy_clip_enable */
    FUNC0(0x99e0, 0x200);
    FUNC2(dev);

    /* Set CTS/RTS rate */
    if ( frequency > ZM_CH_G_14 )
    {
        //zfHpSetRTSCTSRate(dev, 0x10b010b);  /* OFDM 6M */
	    new_band = 1;
	}
    else
    {
        //zfHpSetRTSCTSRate(dev, 0x30003);  /* CCK 11M */
        new_band = 0;
    }

    if (((struct zsHpPriv*)wd->hpPrivate)->hwFrequency > ZM_CH_G_14)
        old_band = 1;
    else
        old_band = 0;

    //Workaround for 2.4GHz only device
    if ((hpPriv->OpFlags & 0x1) == 0)
    {
        if ((((struct zsHpPriv*)wd->hpPrivate)->hwFrequency == ZM_CH_G_1) && (frequency == ZM_CH_G_2))
        {
            /* Force to do band switching */
            old_band = 1;
        }
    }

    /* Notify channel switch to firmware */
    /* TX/RX must be stopped by now */
    cmd[0] = 0 | (ZM_CMD_FREQ_STRAT << 8);
    ret = FUNC5(dev, cmd, 8, ZM_OID_INTERNAL_WRITE, 0);

    if ((initRF != 0) || (new_band != old_band)
            || (((struct zsHpPriv*)wd->hpPrivate)->hwBw40 != bw40))
    {
        /* band switch */
        FUNC11(ZM_LV_1, "=====band switch=====");

        if (initRF == 2 )
        {
            //Cold reset BB/ADDA
            FUNC1(dev, 0x1d4004, 0x800);
            FUNC2(dev);
            FUNC11(ZM_LV_1, "Do cold reset BB/ADDA");
        }
        else
        {
            //Warm reset BB/ADDA
            FUNC1(dev, 0x1d4004, 0x400);
            FUNC2(dev);
        }

        /* reset workaround state to default */
        hpPriv->rxStrongRSSI = 0;
        hpPriv->strongRSSI = 0;

        FUNC1(dev, 0x1d4004, 0x0);
        FUNC2(dev);

        FUNC4(dev, frequency, bw40);

//        zfiCheckRifs(dev);

        /* Bank 0 1 2 3 5 6 7 */
        FUNC9(dev, frequency);
        /* Bank 4 */
        FUNC7(dev, frequency, bw40, extOffset);

        cmd[0] = 32 | (ZM_CMD_RF_INIT << 8);
    }
    else //((new_band == old_band) && !initRF)
    {
       /* same band */

       /* Force disable CR671 bit20 / 7823                                            */
       /* The bug has to do with the polarity of the pdadc offset calibration.  There */
       /* is an initial calibration that is OK, and there is a continuous             */
       /* calibration that updates the pddac with the wrong polarity.  Fortunately    */
       /* the second loop can be disabled with a bit called en_pd_dc_offset_thr.      */
#if 0
        cmdB[0] = 8 | (ZM_CMD_BITAND << 8);;
        cmdB[1] = (0xa27c + 0x1bc000);
        cmdB[2] = 0xffefffff;
        ret = zfIssueCmd(dev, cmdB, 12, ZM_OID_INTERNAL_WRITE, 0);
#endif

       /* Bank 4 */
       FUNC7(dev, frequency, bw40, extOffset);


        cmd[0] = 32 | (ZM_CMD_FREQUENCY << 8);
    }

    /* Compatibility for new layout UB83 */
    /* Setting code at CR1 here move from the func:zfHwHTEnable() in firmware */
    if (((struct zsHpPriv*)wd->hpPrivate)->halCapability & ZM_HP_CAP_11N_ONE_TX_STREAM)
    {
        /* UB83 : one stream */
        tmpValue = 0;
    }
    else
    {
        /* UB81, UB82 : two stream */
        tmpValue = 0x100;
    }

    if (1) //if (((struct zsHpPriv*)wd->hpPrivate)->hw_HT_ENABLE == 1)
	{
        if (bw40 == 1)
		{
			if (extOffset == 1) {
            	FUNC0(0x9804, tmpValue | 0x2d4); //3d4 for real
			}
			else {
				FUNC0(0x9804, tmpValue | 0x2c4);   //3c4 for real
			}
			//# Dyn HT2040.Refer to Reg 1.
            //#[3]:single length (4us) 1st HT long training symbol; use Walsh spatial spreading for 2 chains 2 streams TX
            //#[c]:allow short GI for HT40 packets; enable HT detection.
            //#[4]:enable 20/40 MHz channel detection.
        }
        else
	    {
            FUNC0(0x9804, tmpValue | 0x240);
		    //# Static HT20
            //#[3]:single length (4us) 1st HT long training symbol; use Walsh spatial spreading for 2 chains 2 streams TX
            //#[4]:Otus don't allow short GI for HT20 packets yet; enable HT detection.
            //#[0]:disable 20/40 MHz channel detection.
        }
    }
    else
	{
        FUNC0(0x9804, 0x0);
		//# Legacy;# Direct Mapping for each chain.
        //#Be modified by Oligo to add dynanic for legacy.
        if (bw40 == 1)
		{
            FUNC0(0x9804, 0x4);     //# Dyn Legacy .Refer to reg 1.
        }
        else
		{
            FUNC0(0x9804, 0x0);    //# Static Legacy
        }
	}
	FUNC2(dev);
	/* end of ub83 compatibility */

    /* Set Power, TPC, Gain table... */
	FUNC8(dev, frequency, bw40, extOffset);


    /* store frequency */
    ((struct zsHpPriv*)wd->hpPrivate)->hwFrequency = (u16_t)frequency;
    ((struct zsHpPriv*)wd->hpPrivate)->hwBw40 = bw40;
    ((struct zsHpPriv*)wd->hpPrivate)->hwExtOffset = extOffset;

    FUNC3(dev,
                           frequency, bw40, extOffset,
                           &delta_slope_coeff_exp,
                           &delta_slope_coeff_man,
                           &delta_slope_coeff_exp_shgi,
                           &delta_slope_coeff_man_shgi);

    /* related functions */
    frequency = frequency*1000;
    /* len[36] : type[0x30] : seq[?] */
//    cmd[0] = 28 | (ZM_CMD_FREQUENCY << 8);
    cmd[1] = frequency;
    cmd[2] = bw40;//((struct zsHpPriv*)wd->hpPrivate)->hw_DYNAMIC_HT2040_EN;
    cmd[3] = (extOffset<<2)|0x1;//((wd->ExtOffset << 2) | ((struct zsHpPriv*)wd->hpPrivate)->hw_HT_ENABLE);
    cmd[4] = delta_slope_coeff_exp;
    cmd[5] = delta_slope_coeff_man;
    cmd[6] = delta_slope_coeff_exp_shgi;
    cmd[7] = delta_slope_coeff_man_shgi;
    cmd[8] = checkLoopCount;

    ret = FUNC5(dev, cmd, 36, ZM_CMD_SET_FREQUENCY, 0);

    // delay temporarily, wait for new PHY and RF
    //zfwSleep(dev, 1000);
}