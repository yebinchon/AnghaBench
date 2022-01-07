
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct TYPE_6__ {unsigned long data; scalar_t__ expires; int function; } ;
struct snd_card_aica {TYPE_2__ timer; int spu_dma_work; } ;
struct TYPE_5__ {struct snd_card_aica* private_data; } ;


 int add_timer (TYPE_2__*) ;
 int aica_period_elapsed ;
 int aica_queue ;
 int init_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int mod_timer (TYPE_2__*,scalar_t__) ;
 int queue_work (int ,int *) ;
 scalar_t__ unlikely (unsigned long) ;

__attribute__((used)) static void spu_begin_dma(struct snd_pcm_substream *substream)
{
 struct snd_card_aica *dreamcastcard;
 struct snd_pcm_runtime *runtime;
 runtime = substream->runtime;
 dreamcastcard = substream->pcm->private_data;

 queue_work(aica_queue, &(dreamcastcard->spu_dma_work));

 if (unlikely(dreamcastcard->timer.data)) {
  mod_timer(&dreamcastcard->timer, jiffies + 4);
  return;
 }
 init_timer(&(dreamcastcard->timer));
 dreamcastcard->timer.data = (unsigned long) substream;
 dreamcastcard->timer.function = aica_period_elapsed;
 dreamcastcard->timer.expires = jiffies + 4;
 add_timer(&(dreamcastcard->timer));
}
