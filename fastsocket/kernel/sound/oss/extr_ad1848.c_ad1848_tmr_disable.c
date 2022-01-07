
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; scalar_t__ timer_running; } ;
typedef TYPE_1__ ad1848_info ;
struct TYPE_6__ {scalar_t__ devc; } ;


 int ad_read (TYPE_1__*,int) ;
 int ad_write (TYPE_1__*,int,int) ;
 TYPE_2__** audio_devs ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ad1848_tmr_disable(int dev)
{
 unsigned long flags;
 ad1848_info *devc = (ad1848_info *) audio_devs[dev]->devc;

 spin_lock_irqsave(&devc->lock,flags);
 ad_write(devc, 16, ad_read(devc, 16) & ~0x40);
 devc->timer_running = 0;
 spin_unlock_irqrestore(&devc->lock,flags);
}
