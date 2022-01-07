
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; } ;
struct snd_card_aica {int current_period; int dma_check; int spu_dma_work; int timer; } ;
struct TYPE_2__ {struct snd_card_aica* private_data; } ;


 int AICA_CONTROL_CHANNEL_SAMPLE_NUMBER ;
 int AICA_PERIOD_SIZE ;
 int aica_queue ;
 int frames_to_bytes (struct snd_pcm_runtime*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int queue_work (int ,int *) ;
 int readl (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void aica_period_elapsed(unsigned long timer_var)
{

 int play_period;
 struct snd_pcm_runtime *runtime;
 struct snd_pcm_substream *substream;
 struct snd_card_aica *dreamcastcard;
 substream = (struct snd_pcm_substream *) timer_var;
 runtime = substream->runtime;
 dreamcastcard = substream->pcm->private_data;

 play_period =
     frames_to_bytes(runtime,
       readl
       (AICA_CONTROL_CHANNEL_SAMPLE_NUMBER)) /
     AICA_PERIOD_SIZE;
 if (play_period == dreamcastcard->current_period) {

  mod_timer(&(dreamcastcard->timer), jiffies + 1);
  return;
 }
 if (runtime->channels > 1)
  dreamcastcard->current_period = play_period;
 if (unlikely(dreamcastcard->dma_check == 0))
  dreamcastcard->dma_check = 1;
 queue_work(aica_queue, &(dreamcastcard->spu_dma_work));
}
