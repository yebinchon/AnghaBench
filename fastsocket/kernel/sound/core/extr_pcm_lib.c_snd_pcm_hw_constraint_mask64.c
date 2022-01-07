
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int32_t ;
struct snd_pcm_hw_constraints {int dummy; } ;
struct snd_pcm_runtime {struct snd_pcm_hw_constraints hw_constraints; } ;
struct snd_mask {int * bits; } ;
typedef int snd_pcm_hw_param_t ;


 int EINVAL ;
 int SNDRV_MASK_MAX ;
 struct snd_mask* constrs_mask (struct snd_pcm_hw_constraints*,int ) ;
 int memset (int *,int ,int) ;

int snd_pcm_hw_constraint_mask64(struct snd_pcm_runtime *runtime, snd_pcm_hw_param_t var,
     u_int64_t mask)
{
 struct snd_pcm_hw_constraints *constrs = &runtime->hw_constraints;
 struct snd_mask *maskp = constrs_mask(constrs, var);
 maskp->bits[0] &= (u_int32_t)mask;
 maskp->bits[1] &= (u_int32_t)(mask >> 32);
 memset(maskp->bits + 2, 0, (SNDRV_MASK_MAX-64) / 8);
 if (! maskp->bits[0] && ! maskp->bits[1])
  return -EINVAL;
 return 0;
}
