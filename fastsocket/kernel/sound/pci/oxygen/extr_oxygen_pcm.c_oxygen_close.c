
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct oxygen {int pcm_active; int ** streams; int mutex; TYPE_2__** controls; int card; } ;
struct TYPE_4__ {int id; TYPE_1__* vd; } ;
struct TYPE_3__ {int access; } ;


 size_t CONTROL_SPDIF_PCM ;
 unsigned int PCM_MULTICH ;
 unsigned int PCM_SPDIF ;
 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int oxygen_substream_channel (struct snd_pcm_substream*) ;
 int oxygen_update_spdif_source (struct oxygen*) ;
 int snd_ctl_notify (int ,int,int *) ;
 struct oxygen* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int oxygen_close(struct snd_pcm_substream *substream)
{
 struct oxygen *chip = snd_pcm_substream_chip(substream);
 unsigned int channel = oxygen_substream_channel(substream);

 mutex_lock(&chip->mutex);
 chip->pcm_active &= ~(1 << channel);
 if (channel == PCM_SPDIF) {
  chip->controls[CONTROL_SPDIF_PCM]->vd[0].access |=
   SNDRV_CTL_ELEM_ACCESS_INACTIVE;
  snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_VALUE |
          SNDRV_CTL_EVENT_MASK_INFO,
          &chip->controls[CONTROL_SPDIF_PCM]->id);
 }
 if (channel == PCM_SPDIF || channel == PCM_MULTICH)
  oxygen_update_spdif_source(chip);
 mutex_unlock(&chip->mutex);

 chip->streams[channel] = ((void*)0);
 return 0;
}
