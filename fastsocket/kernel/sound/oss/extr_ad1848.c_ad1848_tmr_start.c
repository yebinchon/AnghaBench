
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ model; int timer_running; int lock; } ;
typedef TYPE_1__ ad1848_info ;
struct TYPE_6__ {scalar_t__ devc; } ;


 scalar_t__ MD_1845 ;
 scalar_t__ MD_1845_SSCAPE ;
 int ad_read (TYPE_1__*,int) ;
 int ad_write (TYPE_1__*,int,int) ;
 TYPE_2__** audio_devs ;
 unsigned int current_interval ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int ad1848_tmr_start(int dev, unsigned int usecs)
{
 unsigned long flags;
 ad1848_info *devc = (ad1848_info *) audio_devs[dev]->devc;
 unsigned long xtal_nsecs;
 unsigned long divider;

 spin_lock_irqsave(&devc->lock,flags);
 if (devc->model == MD_1845 || devc->model == MD_1845_SSCAPE)
  xtal_nsecs = 10050;
 else if (ad_read(devc, 8) & 0x01)
  xtal_nsecs = 9920;
 else
  xtal_nsecs = 9969;

 divider = (usecs * 1000 + xtal_nsecs / 2) / xtal_nsecs;

 if (divider < 100)
  divider = 100;

 if (divider > 65535)
  divider = 65535;

 ad_write(devc, 21, (divider >> 8) & 0xff);
 ad_write(devc, 20, divider & 0xff);
 ad_write(devc, 16, ad_read(devc, 16) | 0x40);
 devc->timer_running = 1;
 spin_unlock_irqrestore(&devc->lock,flags);

 return current_interval = (divider * xtal_nsecs + 500) / 1000;
}
