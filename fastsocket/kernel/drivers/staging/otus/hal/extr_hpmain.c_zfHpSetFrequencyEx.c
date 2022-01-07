
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef scalar_t__ u32_t ;
typedef scalar_t__ u16_t ;
struct zsHpPriv {int isSiteSurvey; int latestBw40; int latestExtOffset; scalar_t__ dot11Mode; scalar_t__ hwFrequency; int OpFlags; int hwBw40; int halCapability; int hwExtOffset; scalar_t__ strongRSSI; scalar_t__ rxStrongRSSI; scalar_t__ latestFrequency; scalar_t__ coldResetNeedFreq; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;


 scalar_t__ ZM_CH_G_1 ;
 scalar_t__ ZM_CH_G_14 ;
 scalar_t__ ZM_CH_G_2 ;
 int ZM_CMD_BITAND ;
 int ZM_CMD_FREQUENCY ;
 int ZM_CMD_FREQ_STRAT ;
 int ZM_CMD_RF_INIT ;
 int ZM_CMD_SET_FREQUENCY ;
 scalar_t__ ZM_HAL_80211_MODE_IBSS_GENERAL ;
 scalar_t__ ZM_HAL_80211_MODE_IBSS_WPA2PSK ;
 int ZM_HP_CAP_11N_ONE_TX_STREAM ;
 int ZM_LV_1 ;
 int ZM_MAC_REG_AC0_CW ;
 int ZM_OID_INTERNAL_WRITE ;
 int reg_write (int,int) ;
 TYPE_1__* wd ;
 int zfDelayWriteInternalReg (int *,int,int) ;
 int zfFlushDelayWrite (int *) ;
 int zfGetHwTurnOffdynParam (int *,scalar_t__,int,int,int*,int*,int*,int*) ;
 int zfInitPhy (int *,scalar_t__,int) ;
 scalar_t__ zfIssueCmd (int *,scalar_t__*,int,int ,int ) ;
 int zfSelAdcClk (int *,int,scalar_t__) ;
 int zfSetBank4AndPowerTable (int *,scalar_t__,int,int) ;
 int zfSetPowerCalTable (int *,scalar_t__,int,int) ;
 int zfSetRfRegs (int *,scalar_t__) ;
 int zm_debug_msg0 (char*) ;
 int zm_msg0_scan (int ,char*) ;
 int zm_msg1_scan (int ,char*,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfHpSetFrequencyEx(zdev_t* dev, u32_t frequency, u8_t bw40,
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

    zmw_get_wlan_dev(dev);
    hpPriv = wd->hpPrivate;

    zm_msg1_scan(ZM_LV_1, "Frequency = ", frequency);
    zm_msg1_scan(ZM_LV_1, "bw40 = ", bw40);
    zm_msg1_scan(ZM_LV_1, "extOffset = ", extOffset);

    if ( hpPriv->coldResetNeedFreq )
    {
        hpPriv->coldResetNeedFreq = 0;
        initRF = 2;
        zm_debug_msg0("zfHpSetFrequencyEx: Do ColdReset ");
    }
    if ( hpPriv->isSiteSurvey == 2 )
    {

        checkLoopCount = 2000;
    }
    else
    {

        checkLoopCount = 1000;
    }

    hpPriv->latestFrequency = frequency;
    hpPriv->latestBw40 = bw40;
    hpPriv->latestExtOffset = extOffset;

    if ((hpPriv->dot11Mode == ZM_HAL_80211_MODE_IBSS_GENERAL) ||
        (hpPriv->dot11Mode == ZM_HAL_80211_MODE_IBSS_WPA2PSK))
    {
        if ( frequency <= ZM_CH_G_14 )
        {

            zfDelayWriteInternalReg(dev, ZM_MAC_REG_AC0_CW, 0x7f0007);

        }
    }


    zfSelAdcClk(dev, bw40, frequency);


    reg_write(0x99e0, 0x200);
    zfFlushDelayWrite(dev);


    if ( frequency > ZM_CH_G_14 )
    {

     new_band = 1;
 }
    else
    {

        new_band = 0;
    }

    if (((struct zsHpPriv*)wd->hpPrivate)->hwFrequency > ZM_CH_G_14)
        old_band = 1;
    else
        old_band = 0;


    if ((hpPriv->OpFlags & 0x1) == 0)
    {
        if ((((struct zsHpPriv*)wd->hpPrivate)->hwFrequency == ZM_CH_G_1) && (frequency == ZM_CH_G_2))
        {

            old_band = 1;
        }
    }



    cmd[0] = 0 | (ZM_CMD_FREQ_STRAT << 8);
    ret = zfIssueCmd(dev, cmd, 8, ZM_OID_INTERNAL_WRITE, 0);

    if ((initRF != 0) || (new_band != old_band)
            || (((struct zsHpPriv*)wd->hpPrivate)->hwBw40 != bw40))
    {

        zm_msg0_scan(ZM_LV_1, "=====band switch=====");

        if (initRF == 2 )
        {

            zfDelayWriteInternalReg(dev, 0x1d4004, 0x800);
            zfFlushDelayWrite(dev);
            zm_msg0_scan(ZM_LV_1, "Do cold reset BB/ADDA");
        }
        else
        {

            zfDelayWriteInternalReg(dev, 0x1d4004, 0x400);
            zfFlushDelayWrite(dev);
        }


        hpPriv->rxStrongRSSI = 0;
        hpPriv->strongRSSI = 0;

        zfDelayWriteInternalReg(dev, 0x1d4004, 0x0);
        zfFlushDelayWrite(dev);

        zfInitPhy(dev, frequency, bw40);




        zfSetRfRegs(dev, frequency);

        zfSetBank4AndPowerTable(dev, frequency, bw40, extOffset);

        cmd[0] = 32 | (ZM_CMD_RF_INIT << 8);
    }
    else
    {
       zfSetBank4AndPowerTable(dev, frequency, bw40, extOffset);


        cmd[0] = 32 | (ZM_CMD_FREQUENCY << 8);
    }



    if (((struct zsHpPriv*)wd->hpPrivate)->halCapability & ZM_HP_CAP_11N_ONE_TX_STREAM)
    {

        tmpValue = 0;
    }
    else
    {

        tmpValue = 0x100;
    }

    if (1)
 {
        if (bw40 == 1)
  {
   if (extOffset == 1) {
             reg_write(0x9804, tmpValue | 0x2d4);
   }
   else {
    reg_write(0x9804, tmpValue | 0x2c4);
   }




        }
        else
     {
            reg_write(0x9804, tmpValue | 0x240);




        }
    }
    else
 {
        reg_write(0x9804, 0x0);


        if (bw40 == 1)
  {
            reg_write(0x9804, 0x4);
        }
        else
  {
            reg_write(0x9804, 0x0);
        }
 }
 zfFlushDelayWrite(dev);



 zfSetPowerCalTable(dev, frequency, bw40, extOffset);



    ((struct zsHpPriv*)wd->hpPrivate)->hwFrequency = (u16_t)frequency;
    ((struct zsHpPriv*)wd->hpPrivate)->hwBw40 = bw40;
    ((struct zsHpPriv*)wd->hpPrivate)->hwExtOffset = extOffset;

    zfGetHwTurnOffdynParam(dev,
                           frequency, bw40, extOffset,
                           &delta_slope_coeff_exp,
                           &delta_slope_coeff_man,
                           &delta_slope_coeff_exp_shgi,
                           &delta_slope_coeff_man_shgi);


    frequency = frequency*1000;


    cmd[1] = frequency;
    cmd[2] = bw40;
    cmd[3] = (extOffset<<2)|0x1;
    cmd[4] = delta_slope_coeff_exp;
    cmd[5] = delta_slope_coeff_man;
    cmd[6] = delta_slope_coeff_exp_shgi;
    cmd[7] = delta_slope_coeff_man_shgi;
    cmd[8] = checkLoopCount;

    ret = zfIssueCmd(dev, cmd, 36, ZM_CMD_SET_FREQUENCY, 0);



}
