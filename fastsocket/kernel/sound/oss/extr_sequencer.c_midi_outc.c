
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* outputc ) (int,unsigned char) ;} ;


 int HZ ;
 int interruptible_sleep_on_timeout (int *,int) ;
 int lock ;
 TYPE_1__** midi_devs ;
 int seq_sleeper ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int,unsigned char) ;

__attribute__((used)) static void midi_outc(int dev, unsigned char data)
{




 int n;
 unsigned long flags;







 n = 3 * HZ;

 spin_lock_irqsave(&lock,flags);
  while (n && !midi_devs[dev]->outputc(dev, data)) {
   interruptible_sleep_on_timeout(&seq_sleeper, HZ/25);
    n--;
   }
 spin_unlock_irqrestore(&lock,flags);
}
