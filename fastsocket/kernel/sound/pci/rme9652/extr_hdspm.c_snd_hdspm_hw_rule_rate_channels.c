
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {struct hdspm* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {scalar_t__ min; int max; int integer; } ;
struct hdspm {scalar_t__ ss_channels; scalar_t__ ds_channels; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_refine (struct snd_interval*,struct snd_interval*) ;

__attribute__((used)) static int snd_hdspm_hw_rule_rate_channels(struct snd_pcm_hw_params *params,
        struct snd_pcm_hw_rule * rule)
{
 struct hdspm *hdspm = rule->private;
 struct snd_interval *c =
     hw_param_interval(params, SNDRV_PCM_HW_PARAM_CHANNELS);
 struct snd_interval *r =
     hw_param_interval(params, SNDRV_PCM_HW_PARAM_RATE);

 if (c->min >= hdspm->ss_channels) {
  struct snd_interval t = {
   .min = 32000,
   .max = 48000,
   .integer = 1,
  };
  return snd_interval_refine(r, &t);
 } else if (c->max <= hdspm->ds_channels) {
  struct snd_interval t = {
   .min = 64000,
   .max = 96000,
   .integer = 1,
  };

  return snd_interval_refine(r, &t);
 }
 return 0;
}
