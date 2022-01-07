
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soundscape {unsigned char midi_vol; int lock; int io_base; } ;
struct snd_wss {struct snd_card* card; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_card {int dummy; } ;


 unsigned char CMD_SET_MIDI_VOL ;
 unsigned char CMD_XXX_MIDI_VOL ;
 struct soundscape* get_card_soundscape (struct snd_card*) ;
 scalar_t__ host_write_ctrl_unsafe (int ,unsigned char,int) ;
 int set_host_mode_unsafe (int ) ;
 int set_midi_mode_unsafe (int ) ;
 struct snd_wss* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sscape_midi_put(struct snd_kcontrol *kctl,
                           struct snd_ctl_elem_value *uctl)
{
 struct snd_wss *chip = snd_kcontrol_chip(kctl);
 struct snd_card *card = chip->card;
 register struct soundscape *s = get_card_soundscape(card);
 unsigned long flags;
 int change;

 spin_lock_irqsave(&s->lock, flags);





 set_host_mode_unsafe(s->io_base);







 if (s->midi_vol == ((unsigned char) uctl->value.integer. value[0] & 127)) {
  change = 0;
  goto __skip_change;
 }
 change = (host_write_ctrl_unsafe(s->io_base, CMD_SET_MIDI_VOL, 100)
           && host_write_ctrl_unsafe(s->io_base, ((unsigned char) uctl->value.integer. value[0]) & 127, 100)
           && host_write_ctrl_unsafe(s->io_base, CMD_XXX_MIDI_VOL, 100));
 s->midi_vol = (unsigned char) uctl->value.integer.value[0] & 127;
      __skip_change:




 set_midi_mode_unsafe(s->io_base);

 spin_unlock_irqrestore(&s->lock, flags);
 return change;
}
