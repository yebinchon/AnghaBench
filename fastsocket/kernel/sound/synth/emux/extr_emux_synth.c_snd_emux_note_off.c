
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_midi_channel {int dummy; } ;
struct snd_emux_voice {int key; scalar_t__ ontime; int state; struct snd_midi_channel* chan; } ;
struct snd_emux_port {struct snd_emux* emu; } ;
struct TYPE_3__ {int (* release ) (struct snd_emux_voice*) ;} ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct snd_emux {int max_voices; int timer_active; int voice_lock; TYPE_1__ ops; TYPE_2__ tlist; struct snd_emux_voice* voices; } ;


 int SNDRV_EMUX_ST_PENDING ;
 int SNDRV_EMUX_ST_RELEASED ;
 scalar_t__ STATE_IS_PLAYING (int ) ;
 int add_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct snd_emux_voice*) ;

void
snd_emux_note_off(void *p, int note, int vel, struct snd_midi_channel *chan)
{
 int ch;
 struct snd_emux *emu;
 struct snd_emux_voice *vp;
 unsigned long flags;
 struct snd_emux_port *port;

 port = p;
 if (snd_BUG_ON(!port || !chan))
  return;

 emu = port->emu;
 if (snd_BUG_ON(!emu || !emu->ops.release))
  return;

 spin_lock_irqsave(&emu->voice_lock, flags);
 for (ch = 0; ch < emu->max_voices; ch++) {
  vp = &emu->voices[ch];
  if (STATE_IS_PLAYING(vp->state) &&
      vp->chan == chan && vp->key == note) {
   vp->state = SNDRV_EMUX_ST_RELEASED;
   if (vp->ontime == jiffies) {





    vp->state = SNDRV_EMUX_ST_PENDING;
    if (! emu->timer_active) {
     emu->tlist.expires = jiffies + 1;
     add_timer(&emu->tlist);
     emu->timer_active = 1;
    }
   } else

    emu->ops.release(vp);
  }
 }
 spin_unlock_irqrestore(&emu->voice_lock, flags);
}
