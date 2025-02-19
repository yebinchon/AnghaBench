
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {unsigned int ds_channels; unsigned int ss_channels; } ;
struct snd_pcm_hw_rule {struct snd_rme9652* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int dummy; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 struct snd_interval* hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_list (struct snd_interval*,int,unsigned int*,int ) ;

__attribute__((used)) static int snd_rme9652_hw_rule_channels(struct snd_pcm_hw_params *params,
     struct snd_pcm_hw_rule *rule)
{
 struct snd_rme9652 *rme9652 = rule->private;
 struct snd_interval *c = hw_param_interval(params, SNDRV_PCM_HW_PARAM_CHANNELS);
 unsigned int list[2] = { rme9652->ds_channels, rme9652->ss_channels };
 return snd_interval_list(c, 2, list, 0);
}
