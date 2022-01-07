
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lcd_panel {int dummy; } ;


 int TWL4030_MODULE_PWMA ;
 int TWL_PWMA_PWMAOFF ;
 unsigned int bklight_level ;
 int twl4030_i2c_write_u8 (int ,int,int ) ;

__attribute__((used)) static int omap2evm_bklight_setlevel(struct lcd_panel *panel,
      unsigned int level)
{
 u8 c;
 if ((level >= 0) && (level <= 100)) {
  c = (125 * (100 - level)) / 100 + 2;
  twl4030_i2c_write_u8(TWL4030_MODULE_PWMA, c, TWL_PWMA_PWMAOFF);
  bklight_level = level;
 }
 return 0;
}
