
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {int var; scalar_t__ private; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_step (int ,int ,unsigned long) ;

__attribute__((used)) static int snd_pcm_hw_rule_step(struct snd_pcm_hw_params *params,
    struct snd_pcm_hw_rule *rule)
{
 unsigned long step = (unsigned long) rule->private;
 return snd_interval_step(hw_param_interval(params, rule->var), 0, step);
}
