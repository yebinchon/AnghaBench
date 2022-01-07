
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_channel {int dummy; } ;
struct snd_emux_voice {int key; struct snd_midi_channel* chan; int state; } ;
struct snd_emux {int max_voices; int voice_lock; struct snd_emux_voice* voices; } ;


 scalar_t__ STATE_IS_PLAYING (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int terminate_voice (struct snd_emux*,struct snd_emux_voice*,int) ;

__attribute__((used)) static void
terminate_note1(struct snd_emux *emu, int note, struct snd_midi_channel *chan, int free)
{
 int i;
 struct snd_emux_voice *vp;
 unsigned long flags;

 spin_lock_irqsave(&emu->voice_lock, flags);
 for (i = 0; i < emu->max_voices; i++) {
  vp = &emu->voices[i];
  if (STATE_IS_PLAYING(vp->state) && vp->chan == chan &&
      vp->key == note)
   terminate_voice(emu, vp, free);
 }
 spin_unlock_irqrestore(&emu->voice_lock, flags);
}
