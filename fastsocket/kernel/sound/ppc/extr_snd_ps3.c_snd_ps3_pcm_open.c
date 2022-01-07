
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ps3_card_info {int start_delay; struct snd_pcm_substream* substream; } ;
struct snd_pcm_substream {TYPE_1__* pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct TYPE_2__ {int device; } ;


 int PS3_AUDIO_FIFO_STAGE_SIZE ;
 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;
 struct snd_ps3_card_info* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_ps3_mute (int ) ;
 int snd_ps3_pcm_hw ;
 int snd_ps3_start_delay ;

__attribute__((used)) static int snd_ps3_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ps3_card_info *card = snd_pcm_substream_chip(substream);
 int pcm_index;

 pcm_index = substream->pcm->device;

 card->substream = substream;

 runtime->hw = snd_ps3_pcm_hw;

 card->start_delay = snd_ps3_start_delay;


 snd_ps3_mute(0);

 snd_pcm_hw_constraint_step(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
       PS3_AUDIO_FIFO_STAGE_SIZE * 4 * 2);
 return 0;
}
