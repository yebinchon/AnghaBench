
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* fbdev; int (* power_down ) (int ) ;int update_mode; int update_mode_before_suspend; scalar_t__ last_color_mode; } ;
struct TYPE_3__ {int dev; } ;


 int BLIZZARD_PLL_MODE ;
 int BLIZZARD_POWER_SAVE ;
 int OMAPFB_UPDATE_DISABLED ;
 TYPE_2__ blizzard ;
 int blizzard_read_reg (int ) ;
 int blizzard_save_all_regs () ;
 int blizzard_set_update_mode (int ) ;
 int blizzard_stop_sdram () ;
 int blizzard_sync () ;
 int blizzard_write_reg (int ,int) ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int stub1 (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int update_full_screen () ;

__attribute__((used)) static void blizzard_suspend(void)
{
 u32 l;
 unsigned long tmo;

 if (blizzard.last_color_mode) {
  update_full_screen();
  blizzard_sync();
 }
 blizzard.update_mode_before_suspend = blizzard.update_mode;

 blizzard_set_update_mode(OMAPFB_UPDATE_DISABLED);

 blizzard_save_all_regs();

 blizzard_stop_sdram();

 l = blizzard_read_reg(BLIZZARD_POWER_SAVE);

 l |= 0x03;
 blizzard_write_reg(BLIZZARD_POWER_SAVE, l);

 tmo = jiffies + msecs_to_jiffies(100);
 while (!(blizzard_read_reg(BLIZZARD_PLL_MODE) & (1 << 1))) {
  if (time_after(jiffies, tmo)) {
   dev_err(blizzard.fbdev->dev,
    "s1d1374x: sleep timeout, stopping PLL manually\n");
   l = blizzard_read_reg(BLIZZARD_PLL_MODE);
   l &= ~0x03;

   l |= 0x2;
   blizzard_write_reg(BLIZZARD_PLL_MODE, l);
   break;
  }
  msleep(1);
 }

 if (blizzard.power_down != ((void*)0))
  blizzard.power_down(blizzard.fbdev->dev);
}
