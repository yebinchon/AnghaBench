
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int timer_running; int lock; } ;
typedef TYPE_1__ ad1848_info ;
struct TYPE_6__ {scalar_t__ devc; } ;


 int ad_read (TYPE_1__*,int) ;
 int ad_write (TYPE_1__*,int,int) ;
 TYPE_2__** audio_devs ;
 scalar_t__ current_interval ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ad1848_tmr_restart(int dev)
{
 unsigned long flags;
 ad1848_info *devc = (ad1848_info *) audio_devs[dev]->devc;

 if (current_interval == 0)
  return;

 spin_lock_irqsave(&devc->lock,flags);
 ad_write(devc, 16, ad_read(devc, 16) | 0x40);
 devc->timer_running = 1;
 spin_unlock_irqrestore(&devc->lock,flags);
}
