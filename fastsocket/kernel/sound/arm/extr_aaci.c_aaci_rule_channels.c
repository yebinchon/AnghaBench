
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_hw_rule {int var; struct aaci* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct aaci {TYPE_3__* ac97_bus; } ;
struct TYPE_6__ {TYPE_2__* pcms; } ;
struct TYPE_5__ {TYPE_1__* r; } ;
struct TYPE_4__ {unsigned int slots; } ;


 int AC97_SLOT_LFE ;
 int AC97_SLOT_PCM_SLEFT ;
 int ARRAY_SIZE (int ) ;
 int channel_list ;
 int hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_list (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int
aaci_rule_channels(struct snd_pcm_hw_params *p, struct snd_pcm_hw_rule *rule)
{
 struct aaci *aaci = rule->private;
 unsigned int chan_mask = 1 << 0, slots;




 slots = aaci->ac97_bus->pcms[0].r[0].slots;
 if (slots & (1 << AC97_SLOT_PCM_SLEFT)) {
  chan_mask |= 1 << 1;
  if (slots & (1 << AC97_SLOT_LFE))
   chan_mask |= 1 << 2;
 }

 return snd_interval_list(hw_param_interval(p, rule->var),
     ARRAY_SIZE(channel_list), channel_list,
     chan_mask);
}
