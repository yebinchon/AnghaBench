
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {int dummy; } ;
struct snd_ac97 {int num; struct snd_ali* private_data; } ;


 unsigned short AC97_GPIO_STATUS ;
 int ALI_AC97_GPIO ;
 unsigned short ALI_AC97_GPIO_DATA_SHIFT ;
 unsigned short ALI_AC97_GPIO_ENABLE ;
 int ALI_REG (struct snd_ali*,int ) ;
 int outl (unsigned short,int ) ;
 int snd_ali_codec_poke (struct snd_ali*,int ,unsigned short,unsigned short) ;
 int snd_ali_printk (char*,unsigned short,unsigned short) ;

__attribute__((used)) static void snd_ali_codec_write(struct snd_ac97 *ac97,
    unsigned short reg,
    unsigned short val )
{
 struct snd_ali *codec = ac97->private_data;

 snd_ali_printk("codec_write: reg=%xh data=%xh.\n", reg, val);
 if (reg == AC97_GPIO_STATUS) {
  outl((val << ALI_AC97_GPIO_DATA_SHIFT) | ALI_AC97_GPIO_ENABLE,
       ALI_REG(codec, ALI_AC97_GPIO));
  return;
 }
 snd_ali_codec_poke(codec, ac97->num, reg, val);
 return ;
}
