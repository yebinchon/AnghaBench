
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltv350qv {int dummy; } ;


 int EIO ;
 int LTV_CHS_480 ;
 int LTV_CLW (int) ;
 int LTV_DATACTL ;
 int LTV_DF_RGB ;
 int LTV_DPL_SAMPLE_RISING ;
 int LTV_DRIVE_CURRENT (int) ;
 int LTV_DSC ;
 int LTV_DS_SAME ;
 int LTV_ENTRY_MODE ;
 int LTV_EPL_ACTIVE_LOW ;
 int LTV_EQ (int ) ;
 int LTV_FWI (int) ;
 int LTV_GAMMA (int) ;
 int LTV_GATECTL1 ;
 int LTV_GATECTL2 ;
 int LTV_HBP ;
 int LTV_HSPL_ACTIVE_LOW ;
 int LTV_IFCTL ;
 int LTV_NL (int) ;
 int LTV_NMD ;
 int LTV_NW_INV_1LINE ;
 int LTV_POWER_ON ;
 int LTV_PWRCTL1 ;
 int LTV_PWRCTL2 ;
 int LTV_REV ;
 int LTV_RGB_BGR ;
 int LTV_SDT (int) ;
 int LTV_SOTCTL ;
 int LTV_SS_RIGHT_TO_LEFT ;
 int LTV_SUPPLY_CURRENT (int) ;
 int LTV_VBP ;
 int LTV_VCOML_ENABLE ;
 int LTV_VCOMOUT_ENABLE ;
 int LTV_VCOM_DISABLE ;
 int LTV_VSPL_ACTIVE_LOW ;
 int ltv350qv_write_reg (struct ltv350qv*,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static int ltv350qv_power_on(struct ltv350qv *lcd)
{
 int ret;


 if (ltv350qv_write_reg(lcd, LTV_PWRCTL1, 0x0000))
  goto err;
 msleep(15);


 if (ltv350qv_write_reg(lcd, LTV_PWRCTL1, LTV_VCOM_DISABLE))
  goto err;
 if (ltv350qv_write_reg(lcd, LTV_PWRCTL2, LTV_VCOML_ENABLE))
  goto err_power1;


 if (ltv350qv_write_reg(lcd, LTV_PWRCTL1,
          LTV_VCOM_DISABLE | LTV_DRIVE_CURRENT(5)
          | LTV_SUPPLY_CURRENT(5)))
  goto err_power2;

 msleep(55);


 ret = ltv350qv_write_reg(lcd, LTV_IFCTL,
     LTV_NMD | LTV_REV | LTV_NL(0x1d));
 ret |= ltv350qv_write_reg(lcd, LTV_DATACTL,
      LTV_DS_SAME | LTV_CHS_480
      | LTV_DF_RGB | LTV_RGB_BGR);
 ret |= ltv350qv_write_reg(lcd, LTV_ENTRY_MODE,
      LTV_VSPL_ACTIVE_LOW
      | LTV_HSPL_ACTIVE_LOW
      | LTV_DPL_SAMPLE_RISING
      | LTV_EPL_ACTIVE_LOW
      | LTV_SS_RIGHT_TO_LEFT);
 ret |= ltv350qv_write_reg(lcd, LTV_GATECTL1, LTV_CLW(3));
 ret |= ltv350qv_write_reg(lcd, LTV_GATECTL2,
      LTV_NW_INV_1LINE | LTV_FWI(3));
 ret |= ltv350qv_write_reg(lcd, LTV_VBP, 0x000a);
 ret |= ltv350qv_write_reg(lcd, LTV_HBP, 0x0021);
 ret |= ltv350qv_write_reg(lcd, LTV_SOTCTL, LTV_SDT(3) | LTV_EQ(0));
 ret |= ltv350qv_write_reg(lcd, LTV_GAMMA(0), 0x0103);
 ret |= ltv350qv_write_reg(lcd, LTV_GAMMA(1), 0x0301);
 ret |= ltv350qv_write_reg(lcd, LTV_GAMMA(2), 0x1f0f);
 ret |= ltv350qv_write_reg(lcd, LTV_GAMMA(3), 0x1f0f);
 ret |= ltv350qv_write_reg(lcd, LTV_GAMMA(4), 0x0707);
 ret |= ltv350qv_write_reg(lcd, LTV_GAMMA(5), 0x0307);
 ret |= ltv350qv_write_reg(lcd, LTV_GAMMA(6), 0x0707);
 ret |= ltv350qv_write_reg(lcd, LTV_GAMMA(7), 0x0000);
 ret |= ltv350qv_write_reg(lcd, LTV_GAMMA(8), 0x0004);
 ret |= ltv350qv_write_reg(lcd, LTV_GAMMA(9), 0x0000);
 if (ret)
  goto err_settings;


 msleep(20);


 ret = ltv350qv_write_reg(lcd, LTV_PWRCTL1,
     LTV_VCOM_DISABLE | LTV_VCOMOUT_ENABLE
     | LTV_POWER_ON | LTV_DRIVE_CURRENT(5)
     | LTV_SUPPLY_CURRENT(5));
 ret |= ltv350qv_write_reg(lcd, LTV_GATECTL2,
      LTV_NW_INV_1LINE | LTV_DSC | LTV_FWI(3));
 if (ret)
  goto err_disp_on;


 return 0;

err_disp_on:





 ltv350qv_write_reg(lcd, LTV_PWRCTL1,
      LTV_VCOM_DISABLE | LTV_DRIVE_CURRENT(5)
      | LTV_SUPPLY_CURRENT(5));
 ltv350qv_write_reg(lcd, LTV_GATECTL2,
      LTV_NW_INV_1LINE | LTV_FWI(3));
err_settings:
err_power2:
err_power1:
 ltv350qv_write_reg(lcd, LTV_PWRCTL2, 0x0000);
 msleep(1);
err:
 ltv350qv_write_reg(lcd, LTV_PWRCTL1, LTV_VCOM_DISABLE);
 return -EIO;
}
