
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
typedef scalar_t__ u16_t ;
struct zsHpPriv {scalar_t__ hwFrequency; } ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;


 int ZM_CMD_RF_INIT ;
 int ZM_OID_INTERNAL_WRITE ;
 TYPE_1__* wd ;
 int zfGetHwTurnOffdynParam (int *,int,int ,int ,int*,int*,int*,int*) ;
 scalar_t__ zfIssueCmd (int *,int*,int,int ,int ) ;
 int zfSetBank4AndPowerTable (int *,int,int ,int ) ;
 int zfSetRfRegs (int *,int) ;
 int zfwSleep (int *,int) ;
 int zm_debug_msg1 (char*,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfInitRf(zdev_t* dev, u32_t frequency)
{
    u32_t cmd[8];
    u16_t ret;
    int delta_slope_coeff_exp;
    int delta_slope_coeff_man;
    int delta_slope_coeff_exp_shgi;
    int delta_slope_coeff_man_shgi;

    zmw_get_wlan_dev(dev);

    zm_debug_msg1(" initRf frequency = ", frequency);

    if (frequency == 0)
    {
        frequency = 2412;
    }


    zfSetRfRegs(dev, frequency);

    zfSetBank4AndPowerTable(dev, frequency, 0, 0);


    ((struct zsHpPriv*)wd->hpPrivate)->hwFrequency = (u16_t)frequency;

    zfGetHwTurnOffdynParam(dev,
                           frequency, 0, 0,
                           &delta_slope_coeff_exp,
                           &delta_slope_coeff_man,
                           &delta_slope_coeff_exp_shgi,
                           &delta_slope_coeff_man_shgi);


    frequency = frequency*1000;
    cmd[0] = 28 | (ZM_CMD_RF_INIT << 8);
    cmd[1] = frequency;
    cmd[2] = 0;
    cmd[3] = 1;
    cmd[4] = delta_slope_coeff_exp;
    cmd[5] = delta_slope_coeff_man;
    cmd[6] = delta_slope_coeff_exp_shgi;
    cmd[7] = delta_slope_coeff_man_shgi;

    ret = zfIssueCmd(dev, cmd, 32, ZM_OID_INTERNAL_WRITE, 0);


    zfwSleep(dev, 1000);
}
