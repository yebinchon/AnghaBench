
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_emux_voice {scalar_t__ state; scalar_t__ ontime; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct TYPE_3__ {int (* release ) (struct snd_emux_voice*) ;} ;
struct snd_emux {int max_voices; int timer_active; int voice_lock; TYPE_2__ tlist; TYPE_1__ ops; struct snd_emux_voice* voices; } ;


 scalar_t__ SNDRV_EMUX_ST_PENDING ;
 scalar_t__ SNDRV_EMUX_ST_RELEASED ;
 int add_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct snd_emux_voice*) ;

void snd_emux_timer_callback(unsigned long data)
{
 struct snd_emux *emu = (struct snd_emux *) data;
 struct snd_emux_voice *vp;
 unsigned long flags;
 int ch, do_again = 0;

 spin_lock_irqsave(&emu->voice_lock, flags);
 for (ch = 0; ch < emu->max_voices; ch++) {
  vp = &emu->voices[ch];
  if (vp->state == SNDRV_EMUX_ST_PENDING) {
   if (vp->ontime == jiffies)
    do_again++;
   else {
    emu->ops.release(vp);
    vp->state = SNDRV_EMUX_ST_RELEASED;
   }
  }
 }
 if (do_again) {
  emu->tlist.expires = jiffies + 1;
  add_timer(&emu->tlist);
  emu->timer_active = 1;
 } else
  emu->timer_active = 0;
 spin_unlock_irqrestore(&emu->voice_lock, flags);
}
