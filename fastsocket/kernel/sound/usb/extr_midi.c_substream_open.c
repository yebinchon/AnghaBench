
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_midi {scalar_t__ opened; int mutex; int card; struct snd_kcontrol* roland_load_ctl; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_kcontrol {int id; TYPE_2__* vd; } ;
struct TYPE_4__ {int access; } ;
struct TYPE_3__ {struct snd_usb_midi* private_data; } ;


 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_ctl_notify (int ,int ,int *) ;
 int update_roland_altsetting (struct snd_usb_midi*) ;

__attribute__((used)) static void substream_open(struct snd_rawmidi_substream *substream, int open)
{
 struct snd_usb_midi* umidi = substream->rmidi->private_data;
 struct snd_kcontrol *ctl;

 mutex_lock(&umidi->mutex);
 if (open) {
  if (umidi->opened++ == 0 && umidi->roland_load_ctl) {
   ctl = umidi->roland_load_ctl;
   ctl->vd[0].access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
   snd_ctl_notify(umidi->card,
           SNDRV_CTL_EVENT_MASK_INFO, &ctl->id);
   update_roland_altsetting(umidi);
  }
 } else {
  if (--umidi->opened == 0 && umidi->roland_load_ctl) {
   ctl = umidi->roland_load_ctl;
   ctl->vd[0].access &= ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
   snd_ctl_notify(umidi->card,
           SNDRV_CTL_EVENT_MASK_INFO, &ctl->id);
  }
 }
 mutex_unlock(&umidi->mutex);
}
