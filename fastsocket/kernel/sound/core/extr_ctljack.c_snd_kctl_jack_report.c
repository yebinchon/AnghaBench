
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int private_value; int id; } ;
struct snd_card {int dummy; } ;


 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int snd_ctl_notify (struct snd_card*,int ,int *) ;

void snd_kctl_jack_report(struct snd_card *card,
     struct snd_kcontrol *kctl, bool status)
{
 if (kctl->private_value == status)
  return;
 kctl->private_value = status;
 snd_ctl_notify(card, SNDRV_CTL_EVENT_MASK_VALUE, &kctl->id);
}
