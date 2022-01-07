
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct hdspm {scalar_t__ is_aes32; int lock; struct snd_pcm_substream* playback_substream; int playback_pid; int * capture_substream; } ;
struct TYPE_2__ {int pid; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 TYPE_1__* current ;
 int hdspm_hw_constraints_aes32_sample_rates ;
 int hdspm_stop_audio (struct hdspm*) ;
 int hw_constraints_period_sizes ;
 int snd_hdspm_hw_rule_channels ;
 int snd_hdspm_hw_rule_channels_rate ;
 int snd_hdspm_hw_rule_rate_channels ;
 int snd_hdspm_playback_subinfo ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 int snd_pcm_hw_constraint_msbits (struct snd_pcm_runtime*,int ,int,int) ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,struct hdspm*,int ,int) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct hdspm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdspm_playback_open(struct snd_pcm_substream *substream)
{
 struct hdspm *hdspm = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 spin_lock_irq(&hdspm->lock);

 snd_pcm_set_sync(substream);

 runtime->hw = snd_hdspm_playback_subinfo;

 if (hdspm->capture_substream == ((void*)0))
  hdspm_stop_audio(hdspm);

 hdspm->playback_pid = current->pid;
 hdspm->playback_substream = substream;

 spin_unlock_irq(&hdspm->lock);

 snd_pcm_hw_constraint_msbits(runtime, 0, 32, 24);

 snd_pcm_hw_constraint_list(runtime, 0,
       SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
       &hw_constraints_period_sizes);

 if (hdspm->is_aes32) {
  snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
    &hdspm_hw_constraints_aes32_sample_rates);
 } else {
  snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
         snd_hdspm_hw_rule_channels, hdspm,
         SNDRV_PCM_HW_PARAM_CHANNELS, -1);
  snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
        snd_hdspm_hw_rule_channels_rate, hdspm,
        SNDRV_PCM_HW_PARAM_RATE, -1);

  snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
        snd_hdspm_hw_rule_rate_channels, hdspm,
        SNDRV_PCM_HW_PARAM_CHANNELS, -1);
 }
 return 0;
}
