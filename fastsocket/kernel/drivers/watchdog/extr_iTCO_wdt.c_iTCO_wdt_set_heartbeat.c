
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iTCO_version; int io_lock; } ;


 int EINVAL ;
 int TCOv1_TMR ;
 int TCOv2_TMR ;
 int heartbeat ;
 int iTCO_vendor_pre_set_heartbeat (unsigned int) ;
 TYPE_1__ iTCO_wdt_private ;
 unsigned char inb (int ) ;
 unsigned int inw (int ) ;
 int outb (unsigned char,int ) ;
 int outw (unsigned int,int ) ;
 unsigned int seconds_to_ticks (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int iTCO_wdt_set_heartbeat(int t)
{
 unsigned int val16;
 unsigned char val8;
 unsigned int tmrval;

 tmrval = seconds_to_ticks(t);


 if (iTCO_wdt_private.iTCO_version == 1)
  tmrval /= 2;



 if (tmrval < 0x04)
  return -EINVAL;
 if (((iTCO_wdt_private.iTCO_version == 2) && (tmrval > 0x3ff)) ||
     ((iTCO_wdt_private.iTCO_version == 1) && (tmrval > 0x03f)))
  return -EINVAL;

 iTCO_vendor_pre_set_heartbeat(tmrval);


 if (iTCO_wdt_private.iTCO_version == 2) {
  spin_lock(&iTCO_wdt_private.io_lock);
  val16 = inw(TCOv2_TMR);
  val16 &= 0xfc00;
  val16 |= tmrval;
  outw(val16, TCOv2_TMR);
  val16 = inw(TCOv2_TMR);
  spin_unlock(&iTCO_wdt_private.io_lock);

  if ((val16 & 0x3ff) != tmrval)
   return -EINVAL;
 } else if (iTCO_wdt_private.iTCO_version == 1) {
  spin_lock(&iTCO_wdt_private.io_lock);
  val8 = inb(TCOv1_TMR);
  val8 &= 0xc0;
  val8 |= (tmrval & 0xff);
  outb(val8, TCOv1_TMR);
  val8 = inb(TCOv1_TMR);
  spin_unlock(&iTCO_wdt_private.io_lock);

  if ((val8 & 0x3f) != tmrval)
   return -EINVAL;
 }

 heartbeat = t;
 return 0;
}
