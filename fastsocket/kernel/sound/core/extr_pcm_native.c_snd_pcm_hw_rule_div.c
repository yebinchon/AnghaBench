
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {int var; int * deps; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {int dummy; } ;


 int hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int hw_param_interval_c (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_div (int ,int ,struct snd_interval*) ;
 int snd_interval_refine (int ,struct snd_interval*) ;

__attribute__((used)) static int snd_pcm_hw_rule_div(struct snd_pcm_hw_params *params,
          struct snd_pcm_hw_rule *rule)
{
 struct snd_interval t;
 snd_interval_div(hw_param_interval_c(params, rule->deps[0]),
       hw_param_interval_c(params, rule->deps[1]), &t);
 return snd_interval_refine(hw_param_interval(params, rule->var), &t);
}
