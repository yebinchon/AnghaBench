
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {int var; struct snd_pcm_hw_constraint_list* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_pcm_hw_constraint_list {int mask; int list; int count; } ;


 int hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_list (int ,int ,int ,int ) ;

__attribute__((used)) static int snd_pcm_hw_rule_list(struct snd_pcm_hw_params *params,
    struct snd_pcm_hw_rule *rule)
{
 struct snd_pcm_hw_constraint_list *list = rule->private;
 return snd_interval_list(hw_param_interval(params, rule->var), list->count, list->list, list->mask);
}
