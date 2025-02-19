
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int min; int max; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_refine (struct snd_interval*,struct snd_interval const*) ;

__attribute__((used)) static int double_rate_hw_constraint_channels(struct snd_pcm_hw_params *params,
           struct snd_pcm_hw_rule *rule)
{
 struct snd_interval *rate = hw_param_interval(params, SNDRV_PCM_HW_PARAM_RATE);
 if (rate->min > 48000) {
  static const struct snd_interval double_rate_channels = {
   .min = 2,
   .max = 2,
  };
  struct snd_interval *channels = hw_param_interval(params, SNDRV_PCM_HW_PARAM_CHANNELS);
  return snd_interval_refine(channels, &double_rate_channels);
 }
 return 0;
}
