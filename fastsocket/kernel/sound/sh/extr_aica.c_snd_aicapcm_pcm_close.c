
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct snd_card_aica {int channel; TYPE_2__ timer; } ;
struct TYPE_3__ {struct snd_card_aica* private_data; } ;


 int aica_queue ;
 int del_timer (TYPE_2__*) ;
 int flush_workqueue (int ) ;
 int kfree (int ) ;
 int spu_disable () ;

__attribute__((used)) static int snd_aicapcm_pcm_close(struct snd_pcm_substream
     *substream)
{
 struct snd_card_aica *dreamcastcard = substream->pcm->private_data;
 flush_workqueue(aica_queue);
 if (dreamcastcard->timer.data)
  del_timer(&dreamcastcard->timer);
 kfree(dreamcastcard->channel);
 spu_disable();
 return 0;
}
