
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux_voice {int ch; int hw; struct snd_emux* emu; scalar_t__ time; int * port; int * chan; int state; } ;
struct snd_emux {int max_voices; int voice_lock; int hw; struct snd_emux_voice* voices; } ;


 int SNDRV_EMUX_ST_OFF ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
snd_emux_init_voices(struct snd_emux *emu)
{
 struct snd_emux_voice *vp;
 int i;
 unsigned long flags;

 spin_lock_irqsave(&emu->voice_lock, flags);
 for (i = 0; i < emu->max_voices; i++) {
  vp = &emu->voices[i];
  vp->ch = -1;
  vp->state = SNDRV_EMUX_ST_OFF;
  vp->chan = ((void*)0);
  vp->port = ((void*)0);
  vp->time = 0;
  vp->emu = emu;
  vp->hw = emu->hw;
 }
 spin_unlock_irqrestore(&emu->voice_lock, flags);
}
