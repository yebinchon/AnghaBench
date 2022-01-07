
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int cmask; int rmask; } ;
typedef int snd_pcm_hw_param_t ;


 int EINVAL ;
 scalar_t__ hw_is_interval (int) ;
 scalar_t__ hw_is_mask (int) ;
 int hw_param_interval (struct snd_pcm_hw_params*,int) ;
 int hw_param_mask (struct snd_pcm_hw_params*,int) ;
 int snd_interval_refine_last (int ) ;
 int snd_mask_refine_last (int ) ;

__attribute__((used)) static int _snd_pcm_hw_param_last(struct snd_pcm_hw_params *params,
      snd_pcm_hw_param_t var)
{
 int changed;
 if (hw_is_mask(var))
  changed = snd_mask_refine_last(hw_param_mask(params, var));
 else if (hw_is_interval(var))
  changed = snd_interval_refine_last(hw_param_interval(params, var));
 else
  return -EINVAL;
 if (changed) {
  params->cmask |= 1 << var;
  params->rmask |= 1 << var;
 }
 return changed;
}
