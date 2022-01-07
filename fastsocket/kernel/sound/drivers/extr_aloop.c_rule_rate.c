
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {int var; struct snd_pcm_hardware* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_pcm_hardware {int rate_max; int rate_min; } ;
struct snd_interval {scalar_t__ integer; scalar_t__ openmax; scalar_t__ openmin; int max; int min; } ;


 int hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_refine (int ,struct snd_interval*) ;

__attribute__((used)) static int rule_rate(struct snd_pcm_hw_params *params,
       struct snd_pcm_hw_rule *rule)
{
 struct snd_pcm_hardware *hw = rule->private;
 struct snd_interval t;

        t.min = hw->rate_min;
        t.max = hw->rate_max;
        t.openmin = t.openmax = 0;
        t.integer = 0;
 return snd_interval_refine(hw_param_interval(params, rule->var), &t);
}
