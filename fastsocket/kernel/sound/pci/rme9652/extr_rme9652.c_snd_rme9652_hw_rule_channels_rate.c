
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int ds_channels; int ss_channels; } ;
struct snd_pcm_hw_rule {struct snd_rme9652* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int min; int max; int integer; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_refine (struct snd_interval*,struct snd_interval*) ;

__attribute__((used)) static int snd_rme9652_hw_rule_channels_rate(struct snd_pcm_hw_params *params,
          struct snd_pcm_hw_rule *rule)
{
 struct snd_rme9652 *rme9652 = rule->private;
 struct snd_interval *c = hw_param_interval(params, SNDRV_PCM_HW_PARAM_CHANNELS);
 struct snd_interval *r = hw_param_interval(params, SNDRV_PCM_HW_PARAM_RATE);
 if (r->min > 48000) {
  struct snd_interval t = {
   .min = rme9652->ds_channels,
   .max = rme9652->ds_channels,
   .integer = 1,
  };
  return snd_interval_refine(c, &t);
 } else if (r->max < 88200) {
  struct snd_interval t = {
   .min = rme9652->ss_channels,
   .max = rme9652->ss_channels,
   .integer = 1,
  };
  return snd_interval_refine(c, &t);
 }
 return 0;
}
