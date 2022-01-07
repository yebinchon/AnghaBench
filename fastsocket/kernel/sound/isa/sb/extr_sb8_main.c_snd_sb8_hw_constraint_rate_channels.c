
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {int dummy; } ;
struct snd_pcm_hw_params {unsigned int rate_num; unsigned int rate_den; } ;
struct snd_interval {int min; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_ratnum (struct snd_interval*,int,int ,unsigned int*,unsigned int*) ;
 int stereo_clocks ;

__attribute__((used)) static int snd_sb8_hw_constraint_rate_channels(struct snd_pcm_hw_params *params,
            struct snd_pcm_hw_rule *rule)
{
 struct snd_interval *c = hw_param_interval(params, SNDRV_PCM_HW_PARAM_CHANNELS);
 if (c->min > 1) {
    unsigned int num = 0, den = 0;
  int err = snd_interval_ratnum(hw_param_interval(params, SNDRV_PCM_HW_PARAM_RATE),
       2, stereo_clocks, &num, &den);
  if (err >= 0 && den) {
   params->rate_num = num;
   params->rate_den = den;
  }
  return err;
 }
 return 0;
}
