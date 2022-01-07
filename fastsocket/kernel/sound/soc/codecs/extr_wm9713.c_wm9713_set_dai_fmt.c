
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int AC97_CENTER_LFE_MASTER ;
 int AC97_GPIO_CFG ;






 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 int ac97_read (struct snd_soc_codec*,int ) ;
 int ac97_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm9713_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 gpio = ac97_read(codec, AC97_GPIO_CFG) & 0xffc5;
 u16 reg = 0x8000;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 139:
  reg |= 0x4000;
  gpio |= 0x0010;
  break;
 case 138:
  reg |= 0x6000;
  gpio |= 0x0018;
  break;
 case 136:
  reg |= 0x2000;
  gpio |= 0x001a;
  break;
 case 137:
  gpio |= 0x0012;
  break;
 }


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 132:
  reg |= 0x00c0;
  break;
 case 131:
  reg |= 0x0080;
  break;
 case 129:
  reg |= 0x0040;
  break;
 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 133:
  reg |= 0x0002;
  break;
 case 128:
  break;
 case 130:
  reg |= 0x0001;
  break;
 case 135:
  reg |= 0x0003;
  break;
 case 134:
  reg |= 0x0043;
  break;
 }

 ac97_write(codec, AC97_GPIO_CFG, gpio);
 ac97_write(codec, AC97_CENTER_LFE_MASTER, reg);
 return 0;
}
