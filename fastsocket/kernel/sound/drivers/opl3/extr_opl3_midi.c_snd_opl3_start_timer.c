
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct snd_opl3 {int sys_timer_status; int sys_timer_lock; TYPE_1__ tlist; } ;


 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_opl3_start_timer(struct snd_opl3 *opl3)
{
 unsigned long flags;
 spin_lock_irqsave(&opl3->sys_timer_lock, flags);
 if (! opl3->sys_timer_status) {
  opl3->tlist.expires = jiffies + 1;
  add_timer(&opl3->tlist);
  opl3->sys_timer_status = 1;
 }
 spin_unlock_irqrestore(&opl3->sys_timer_lock, flags);
}
