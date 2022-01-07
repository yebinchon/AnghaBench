
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int zoom_on; int update_mode_before_suspend; TYPE_1__* fbdev; int (* power_up ) (int ) ;} ;
struct TYPE_3__ {int dev; } ;


 int BLIZZARD_DISPLAY_MODE ;
 int BLIZZARD_PLL_DIV ;
 int BLIZZARD_PLL_MODE ;
 int BLIZZARD_POWER_SAVE ;
 TYPE_2__ blizzard ;
 int blizzard_read_reg (int ) ;
 int blizzard_restart_sdram () ;
 int blizzard_restore_gen_regs () ;
 int blizzard_restore_pll_regs () ;
 int blizzard_set_update_mode (int ) ;
 int blizzard_sync () ;
 int blizzard_write_reg (int ,int) ;
 int msleep (int) ;
 int stub1 (int ) ;
 int update_full_screen () ;

__attribute__((used)) static void blizzard_resume(void)
{
 u32 l;

 if (blizzard.power_up != ((void*)0))
  blizzard.power_up(blizzard.fbdev->dev);

 l = blizzard_read_reg(BLIZZARD_POWER_SAVE);

 l &= ~0x03;
 blizzard_write_reg(BLIZZARD_POWER_SAVE, l);

 blizzard_restore_pll_regs();
 l = blizzard_read_reg(BLIZZARD_PLL_MODE);
 l &= ~0x03;

 l |= 0x1;
 blizzard_write_reg(BLIZZARD_PLL_MODE, l);

 while (!(blizzard_read_reg(BLIZZARD_PLL_DIV) & (1 << 7)))
  msleep(1);

 blizzard_restart_sdram();

 blizzard_restore_gen_regs();


 blizzard_write_reg(BLIZZARD_DISPLAY_MODE, 0x01);


 blizzard_set_update_mode(blizzard.update_mode_before_suspend);


 blizzard.zoom_on = 1;
 update_full_screen();
 blizzard_sync();
}
