
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int * timer; TYPE_1__* pcm; } ;
struct TYPE_2__ {int card; } ;


 int snd_device_free (int ,int *) ;

void snd_pcm_timer_done(struct snd_pcm_substream *substream)
{
 if (substream->timer) {
  snd_device_free(substream->pcm->card, substream->timer);
  substream->timer = ((void*)0);
 }
}
