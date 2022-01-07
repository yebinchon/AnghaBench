
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emux_voice {int ch; int state; TYPE_1__* emu; } ;
struct snd_emux {int voice_lock; struct snd_emux_voice* voices; } ;
struct snd_emu10k1 {struct snd_emux* synth; } ;
struct best_voice {size_t voice; } ;
struct TYPE_2__ {int num_voices; } ;


 int ENOMEM ;
 int SNDRV_EMUX_ST_OFF ;
 int V_END ;
 int lookup_voices (struct snd_emux*,struct snd_emu10k1*,struct best_voice*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
snd_emu10k1_synth_get_voice(struct snd_emu10k1 *hw)
{
 struct snd_emux *emu;
 struct snd_emux_voice *vp;
 struct best_voice best[V_END];
 unsigned long flags;
 int i;

 emu = hw->synth;

 spin_lock_irqsave(&emu->voice_lock, flags);
 lookup_voices(emu, hw, best, 1);
 for (i = 0; i < V_END; i++) {
  if (best[i].voice >= 0) {
   int ch;
   vp = &emu->voices[best[i].voice];
   if ((ch = vp->ch) < 0) {




    continue;
   }
   vp->emu->num_voices--;
   vp->ch = -1;
   vp->state = SNDRV_EMUX_ST_OFF;
   spin_unlock_irqrestore(&emu->voice_lock, flags);
   return ch;
  }
 }
 spin_unlock_irqrestore(&emu->voice_lock, flags);


 return -ENOMEM;
}
