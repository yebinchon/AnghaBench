
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_rme9652 {TYPE_2__* spdif_ctl; int card; int creg_spdif; int creg_spdif_stream; int lock; struct snd_pcm_substream* playback_substream; int playback_pid; int * capture_substream; int playback_buffer; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_bytes; int dma_area; int hw; } ;
struct TYPE_6__ {int pid; } ;
struct TYPE_5__ {int id; TYPE_1__* vd; } ;
struct TYPE_4__ {int access; } ;


 int RME9652_DMA_AREA_BYTES ;
 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 TYPE_3__* current ;
 int hw_constraints_period_sizes ;
 int rme9652_set_thru (struct snd_rme9652*,int,int ) ;
 int rme9652_stop (struct snd_rme9652*) ;
 int snd_ctl_notify (int ,int,int *) ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 int snd_pcm_hw_constraint_msbits (struct snd_pcm_runtime*,int ,int,int) ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,struct snd_rme9652*,int ,int) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct snd_rme9652* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_rme9652_hw_rule_channels ;
 int snd_rme9652_hw_rule_channels_rate ;
 int snd_rme9652_hw_rule_rate_channels ;
 int snd_rme9652_playback_subinfo ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_rme9652_playback_open(struct snd_pcm_substream *substream)
{
 struct snd_rme9652 *rme9652 = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 spin_lock_irq(&rme9652->lock);

 snd_pcm_set_sync(substream);

        runtime->hw = snd_rme9652_playback_subinfo;
 runtime->dma_area = rme9652->playback_buffer;
 runtime->dma_bytes = RME9652_DMA_AREA_BYTES;

 if (rme9652->capture_substream == ((void*)0)) {
  rme9652_stop(rme9652);
  rme9652_set_thru(rme9652, -1, 0);
 }

 rme9652->playback_pid = current->pid;
 rme9652->playback_substream = substream;

 spin_unlock_irq(&rme9652->lock);

 snd_pcm_hw_constraint_msbits(runtime, 0, 32, 24);
 snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_SIZE, &hw_constraints_period_sizes);
 snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
        snd_rme9652_hw_rule_channels, rme9652,
        SNDRV_PCM_HW_PARAM_CHANNELS, -1);
 snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
        snd_rme9652_hw_rule_channels_rate, rme9652,
        SNDRV_PCM_HW_PARAM_RATE, -1);
 snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
        snd_rme9652_hw_rule_rate_channels, rme9652,
        SNDRV_PCM_HW_PARAM_CHANNELS, -1);

 rme9652->creg_spdif_stream = rme9652->creg_spdif;
 rme9652->spdif_ctl->vd[0].access &= ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
 snd_ctl_notify(rme9652->card, SNDRV_CTL_EVENT_MASK_VALUE |
         SNDRV_CTL_EVENT_MASK_INFO, &rme9652->spdif_ctl->id);
 return 0;
}
