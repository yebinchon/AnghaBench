
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_constraints {int dummy; } ;
struct snd_pcm_runtime {struct snd_pcm_hw_constraints hw_constraints; } ;
typedef int snd_pcm_hw_param_t ;


 int constrs_interval (struct snd_pcm_hw_constraints*,int ) ;
 int snd_interval_setinteger (int ) ;

int snd_pcm_hw_constraint_integer(struct snd_pcm_runtime *runtime, snd_pcm_hw_param_t var)
{
 struct snd_pcm_hw_constraints *constrs = &runtime->hw_constraints;
 return snd_interval_setinteger(constrs_interval(constrs, var));
}
