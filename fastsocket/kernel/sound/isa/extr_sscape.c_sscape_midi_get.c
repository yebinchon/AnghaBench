
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soundscape {int lock; int midi_vol; } ;
struct snd_wss {struct snd_card* card; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_card {int dummy; } ;


 struct soundscape* get_card_soundscape (struct snd_card*) ;
 struct snd_wss* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sscape_midi_get(struct snd_kcontrol *kctl,
                           struct snd_ctl_elem_value *uctl)
{
 struct snd_wss *chip = snd_kcontrol_chip(kctl);
 struct snd_card *card = chip->card;
 register struct soundscape *s = get_card_soundscape(card);
 unsigned long flags;

 spin_lock_irqsave(&s->lock, flags);
 uctl->value.integer.value[0] = s->midi_vol;
 spin_unlock_irqrestore(&s->lock, flags);
 return 0;
}
