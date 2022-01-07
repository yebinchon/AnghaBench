
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {int reg_lock; int * image; } ;
struct snd_timer {int dummy; } ;


 size_t CS4231_ALT_FEATURE_1 ;
 int CS4231_TIMER_ENABLE ;
 struct snd_wss* snd_timer_chip (struct snd_timer*) ;
 int snd_wss_out (struct snd_wss*,size_t,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_wss_timer_stop(struct snd_timer *timer)
{
 unsigned long flags;
 struct snd_wss *chip = snd_timer_chip(timer);
 spin_lock_irqsave(&chip->reg_lock, flags);
 chip->image[CS4231_ALT_FEATURE_1] &= ~CS4231_TIMER_ENABLE;
 snd_wss_out(chip, CS4231_ALT_FEATURE_1,
      chip->image[CS4231_ALT_FEATURE_1]);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
 return 0;
}
