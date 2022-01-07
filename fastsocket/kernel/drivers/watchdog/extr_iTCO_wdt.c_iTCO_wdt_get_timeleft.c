
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iTCO_version; int io_lock; } ;


 int EINVAL ;
 int TCO1_STS ;
 int TCO_RLD ;
 int TCOv1_TMR ;
 TYPE_1__ iTCO_wdt_private ;
 int inb (int ) ;
 int inw (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int iTCO_wdt_get_timeleft(int *time_left)
{
 unsigned int val16;
 unsigned char val8;


 if (iTCO_wdt_private.iTCO_version == 2) {
  spin_lock(&iTCO_wdt_private.io_lock);
  val16 = inw(TCO_RLD);
  val16 &= 0x3ff;
  spin_unlock(&iTCO_wdt_private.io_lock);

  *time_left = (val16 * 6) / 10;
 } else if (iTCO_wdt_private.iTCO_version == 1) {
  spin_lock(&iTCO_wdt_private.io_lock);
  val8 = inb(TCO_RLD);
  val8 &= 0x3f;
  if (!(inw(TCO1_STS) & 0x0008))
   val8 += (inb(TCOv1_TMR) & 0x3f);
  spin_unlock(&iTCO_wdt_private.io_lock);

  *time_left = (val8 * 6) / 10;
 } else
  return -EINVAL;
 return 0;
}
