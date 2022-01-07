
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stop; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;
struct snd_ali {TYPE_2__ chregs; } ;


 int ALI_REG (struct snd_ali*,int ) ;
 int outl (unsigned int,int ) ;
 int snd_ali_printk (char*,unsigned int) ;

__attribute__((used)) static void snd_ali_stop_voice(struct snd_ali *codec, unsigned int channel)
{
 unsigned int mask = 1 << (channel & 0x1f);

 snd_ali_printk("stop_voice: channel=%d\n",channel);
 outl(mask, ALI_REG(codec, codec->chregs.regs.stop));
}
