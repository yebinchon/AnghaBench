
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int dummy; } ;
typedef int snd_pcm_hw_param_t ;


 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,unsigned int,int ,int ,void*,int ,int) ;
 int snd_pcm_hw_rule_step ;

int snd_pcm_hw_constraint_step(struct snd_pcm_runtime *runtime,
          unsigned int cond,
          snd_pcm_hw_param_t var,
          unsigned long step)
{
 return snd_pcm_hw_rule_add(runtime, cond, var,
       snd_pcm_hw_rule_step, (void *) step,
       var, -1);
}
