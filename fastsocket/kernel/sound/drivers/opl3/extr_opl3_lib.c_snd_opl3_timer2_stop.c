
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int dummy; } ;
struct snd_opl3 {unsigned char timer_enable; int timer_lock; int (* command ) (struct snd_opl3*,int,unsigned char) ;} ;


 int OPL3_LEFT ;
 int OPL3_REG_TIMER_CONTROL ;
 unsigned char OPL3_TIMER2_MASK ;
 unsigned char OPL3_TIMER2_START ;
 struct snd_opl3* snd_timer_chip (struct snd_timer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct snd_opl3*,int,unsigned char) ;

__attribute__((used)) static int snd_opl3_timer2_stop(struct snd_timer * timer)
{
 unsigned long flags;
 unsigned char tmp;
 struct snd_opl3 *opl3;

 opl3 = snd_timer_chip(timer);
 spin_lock_irqsave(&opl3->timer_lock, flags);
 tmp = (opl3->timer_enable | OPL3_TIMER2_MASK) & ~OPL3_TIMER2_START;
 opl3->timer_enable = tmp;
 opl3->command(opl3, OPL3_LEFT | OPL3_REG_TIMER_CONTROL, tmp);
 spin_unlock_irqrestore(&opl3->timer_lock, flags);
 return 0;
}
