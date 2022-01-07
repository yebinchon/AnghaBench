
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int openmin; } ;
typedef int snd_pcm_hw_param_t ;


 unsigned int EINVAL ;
 scalar_t__ hw_is_interval (int ) ;
 scalar_t__ hw_is_mask (int ) ;
 struct snd_interval* hw_param_interval_c (struct snd_pcm_hw_params const*,int ) ;
 int hw_param_mask_c (struct snd_pcm_hw_params const*,int ) ;
 unsigned int snd_interval_min (struct snd_interval const*) ;
 unsigned int snd_mask_min (int ) ;

__attribute__((used)) static unsigned int
snd_pcm_hw_param_value_min(const struct snd_pcm_hw_params *params,
      snd_pcm_hw_param_t var, int *dir)
{
 if (hw_is_mask(var)) {
  if (dir)
   *dir = 0;
  return snd_mask_min(hw_param_mask_c(params, var));
 }
 if (hw_is_interval(var)) {
  const struct snd_interval *i = hw_param_interval_c(params, var);
  if (dir)
   *dir = i->openmin;
  return snd_interval_min(i);
 }
 return -EINVAL;
}
