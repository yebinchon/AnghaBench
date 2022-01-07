
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TWL4030_MODULE_PM_RECEIVER ;
 int TWL4030_WATCHDOG_CFG_REG_OFFS ;
 int twl4030_i2c_write_u8 (int ,unsigned char,int ) ;

__attribute__((used)) static int twl4030_wdt_write(unsigned char val)
{
 return twl4030_i2c_write_u8(TWL4030_MODULE_PM_RECEIVER, val,
     TWL4030_WATCHDOG_CFG_REG_OFFS);
}
