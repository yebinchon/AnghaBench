
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltv350qv {int dummy; } ;


 int EIO ;
 int LTV_DRIVE_CURRENT (int) ;
 int LTV_FWI (int) ;
 int LTV_GATECTL2 ;
 int LTV_NW_INV_1LINE ;
 int LTV_PWRCTL1 ;
 int LTV_PWRCTL2 ;
 int LTV_SUPPLY_CURRENT (int) ;
 int LTV_VCOM_DISABLE ;
 int ltv350qv_write_reg (struct ltv350qv*,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static int ltv350qv_power_off(struct ltv350qv *lcd)
{
 int ret;


 ret = ltv350qv_write_reg(lcd, LTV_PWRCTL1,
     LTV_VCOM_DISABLE
     | LTV_DRIVE_CURRENT(5)
     | LTV_SUPPLY_CURRENT(5));
 ret |= ltv350qv_write_reg(lcd, LTV_GATECTL2,
      LTV_NW_INV_1LINE | LTV_FWI(3));


 ret |= ltv350qv_write_reg(lcd, LTV_PWRCTL2, 0x0000);


 msleep(1);


 ret |= ltv350qv_write_reg(lcd, LTV_PWRCTL1, LTV_VCOM_DISABLE);






 if (ret)
  return -EIO;


 return 0;
}
