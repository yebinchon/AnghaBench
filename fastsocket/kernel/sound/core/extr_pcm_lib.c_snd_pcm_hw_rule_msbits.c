
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {scalar_t__ private; } ;
struct snd_pcm_hw_params {unsigned int msbits; } ;
struct snd_interval {int dummy; } ;


 int SNDRV_PCM_HW_PARAM_SAMPLE_BITS ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 scalar_t__ snd_interval_single (struct snd_interval*) ;
 int snd_interval_value (struct snd_interval*) ;

__attribute__((used)) static int snd_pcm_hw_rule_msbits(struct snd_pcm_hw_params *params,
      struct snd_pcm_hw_rule *rule)
{
 unsigned int l = (unsigned long) rule->private;
 int width = l & 0xffff;
 unsigned int msbits = l >> 16;
 struct snd_interval *i = hw_param_interval(params, SNDRV_PCM_HW_PARAM_SAMPLE_BITS);
 if (snd_interval_single(i) && snd_interval_value(i) == width)
  params->msbits = msbits;
 return 0;
}
