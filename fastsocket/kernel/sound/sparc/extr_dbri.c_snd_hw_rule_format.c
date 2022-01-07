
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_mask {int * bits; } ;
struct snd_interval {int min; } ;


 int SNDRV_PCM_FMTBIT_S16_BE ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 struct snd_mask* hw_param_mask (struct snd_pcm_hw_params*,int ) ;
 int snd_mask_any (struct snd_mask*) ;
 int snd_mask_refine (struct snd_mask*,struct snd_mask*) ;

__attribute__((used)) static int snd_hw_rule_format(struct snd_pcm_hw_params *params,
         struct snd_pcm_hw_rule *rule)
{
 struct snd_interval *c = hw_param_interval(params,
    SNDRV_PCM_HW_PARAM_CHANNELS);
 struct snd_mask *f = hw_param_mask(params, SNDRV_PCM_HW_PARAM_FORMAT);
 struct snd_mask fmt;

 snd_mask_any(&fmt);
 if (c->min > 1) {
  fmt.bits[0] &= SNDRV_PCM_FMTBIT_S16_BE;
  return snd_mask_refine(f, &fmt);
 }
 return 0;
}
