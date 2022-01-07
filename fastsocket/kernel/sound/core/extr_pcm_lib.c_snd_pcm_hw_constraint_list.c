
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int dummy; } ;
struct snd_pcm_hw_constraint_list {int dummy; } ;
typedef int snd_pcm_hw_param_t ;


 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,unsigned int,int ,int ,struct snd_pcm_hw_constraint_list*,int ,int) ;
 int snd_pcm_hw_rule_list ;

int snd_pcm_hw_constraint_list(struct snd_pcm_runtime *runtime,
          unsigned int cond,
          snd_pcm_hw_param_t var,
          struct snd_pcm_hw_constraint_list *l)
{
 return snd_pcm_hw_rule_add(runtime, cond, var,
       snd_pcm_hw_rule_list, l,
       var, -1);
}
