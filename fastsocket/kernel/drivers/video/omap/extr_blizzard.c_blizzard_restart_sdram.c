
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; } ;


 int BLIZZARD_MEM_BANK0_ACTIVATE ;
 int BLIZZARD_MEM_BANK0_STATUS ;
 TYPE_2__ blizzard ;
 int blizzard_read_reg (int ) ;
 int blizzard_write_reg (int ,int) ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void blizzard_restart_sdram(void)
{
 unsigned long tmo;

 blizzard_write_reg(BLIZZARD_MEM_BANK0_ACTIVATE, 0);
 udelay(50);
 blizzard_write_reg(BLIZZARD_MEM_BANK0_ACTIVATE, 1);
 tmo = jiffies + msecs_to_jiffies(200);
 while (!(blizzard_read_reg(BLIZZARD_MEM_BANK0_STATUS) & 0x01)) {
  if (time_after(jiffies, tmo)) {
   dev_err(blizzard.fbdev->dev,
     "s1d1374x: SDRAM not ready\n");
   break;
  }
  msleep(1);
 }
}
