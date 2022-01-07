
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_tea575x {int freq; unsigned long val; TYPE_1__* ops; scalar_t__ freq_fixup; scalar_t__ tea5759; } ;
struct TYPE_2__ {int (* write ) (struct snd_tea575x*,unsigned long) ;} ;


 unsigned long TEA575X_BIT_FREQ_MASK ;
 int stub1 (struct snd_tea575x*,unsigned long) ;

__attribute__((used)) static void snd_tea575x_set_freq(struct snd_tea575x *tea)
{
 unsigned long freq;

 freq = tea->freq / 16;
 if (freq > 108000)
  freq = 108000;
 if (freq < 87000)
  freq = 87000;

 if (tea->tea5759)
  freq -= tea->freq_fixup;
 else
  freq += tea->freq_fixup;

 freq *= 10;
 freq /= 125;

 tea->val &= ~TEA575X_BIT_FREQ_MASK;
 tea->val |= freq & TEA575X_BIT_FREQ_MASK;
 tea->ops->write(tea, tea->val);
}
