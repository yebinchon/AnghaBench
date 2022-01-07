
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int dummy; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int double_rate_hw_constraint_channels ;
 int double_rate_hw_constraint_rate ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,int *,int ,int) ;

int snd_ac97_pcm_double_rate_rules(struct snd_pcm_runtime *runtime)
{
 int err;

 err = snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
      double_rate_hw_constraint_rate, ((void*)0),
      SNDRV_PCM_HW_PARAM_CHANNELS, -1);
 if (err < 0)
  return err;
 err = snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
      double_rate_hw_constraint_channels, ((void*)0),
      SNDRV_PCM_HW_PARAM_RATE, -1);
 return err;
}
