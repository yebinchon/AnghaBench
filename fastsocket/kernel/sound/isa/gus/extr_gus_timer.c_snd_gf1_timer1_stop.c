
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_timer {int dummy; } ;
struct TYPE_2__ {int timer_enabled; } ;
struct snd_gus_card {int reg_lock; TYPE_1__ gf1; } ;


 int SNDRV_GF1_GB_SOUND_BLASTER_CONTROL ;
 int snd_gf1_write8 (struct snd_gus_card*,int ,unsigned char) ;
 struct snd_gus_card* snd_timer_chip (struct snd_timer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_gf1_timer1_stop(struct snd_timer * timer)
{
 unsigned long flags;
 unsigned char tmp;
 struct snd_gus_card *gus;

 gus = snd_timer_chip(timer);
 spin_lock_irqsave(&gus->reg_lock, flags);
 tmp = (gus->gf1.timer_enabled &= ~4);
 snd_gf1_write8(gus, SNDRV_GF1_GB_SOUND_BLASTER_CONTROL, tmp);
 spin_unlock_irqrestore(&gus->reg_lock, flags);
 return 0;
}
