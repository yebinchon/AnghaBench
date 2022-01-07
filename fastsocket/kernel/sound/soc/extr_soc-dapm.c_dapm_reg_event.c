
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {unsigned int on_val; unsigned int off_val; int reg; int mask; int shift; int codec; } ;
struct snd_kcontrol {int dummy; } ;


 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int snd_soc_update_bits (int ,int,int,unsigned int) ;

int dapm_reg_event(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kcontrol, int event)
{
 unsigned int val;

 if (SND_SOC_DAPM_EVENT_ON(event))
  val = w->on_val;
 else
  val = w->off_val;

 snd_soc_update_bits(w->codec, -(w->reg + 1),
       w->mask << w->shift, val << w->shift);

 return 0;
}
