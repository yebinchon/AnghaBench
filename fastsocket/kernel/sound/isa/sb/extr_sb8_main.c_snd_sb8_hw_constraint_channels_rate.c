
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {scalar_t__ min; scalar_t__ max; } ;


 scalar_t__ SB8_RATE (int) ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_refine (struct snd_interval*,struct snd_interval*) ;

__attribute__((used)) static int snd_sb8_hw_constraint_channels_rate(struct snd_pcm_hw_params *params,
            struct snd_pcm_hw_rule *rule)
{
 struct snd_interval *r = hw_param_interval(params, SNDRV_PCM_HW_PARAM_RATE);
 if (r->min > SB8_RATE(22050) || r->max <= SB8_RATE(11025)) {
  struct snd_interval t = { .min = 1, .max = 1 };
  return snd_interval_refine(hw_param_interval(params, SNDRV_PCM_HW_PARAM_CHANNELS), &t);
 }
 return 0;
}
