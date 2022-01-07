
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_mixer_oss_slot {int (* private_free ) (struct snd_mixer_oss_slot*) ;} ;
struct snd_mixer_oss {struct snd_mixer_oss_slot* slots; struct snd_card* card; } ;
struct snd_card {int dummy; } ;
struct TYPE_2__ {struct snd_mixer_oss* mixer_oss; } ;


 int ENXIO ;
 int SNDRV_OSS_MAX_MIXERS ;
 TYPE_1__* card_oss (struct snd_card*) ;
 int kfree (struct snd_mixer_oss*) ;
 scalar_t__ snd_BUG_ON (int) ;
 int stub1 (struct snd_mixer_oss_slot*) ;

__attribute__((used)) static int snd_mixer_oss_free1(void *private)
{
 struct snd_mixer_oss *mixer = private;
 struct snd_card *card;
 int idx;

 if (!mixer)
  return 0;
 card = mixer->card;
 if (snd_BUG_ON(mixer != card_oss(card)->mixer_oss))
  return -ENXIO;
 card_oss(card)->mixer_oss = ((void*)0);
 for (idx = 0; idx < SNDRV_OSS_MAX_MIXERS; idx++) {
  struct snd_mixer_oss_slot *chn = &mixer->slots[idx];
  if (chn->private_free)
   chn->private_free(chn);
 }
 kfree(mixer);
 return 0;
}
