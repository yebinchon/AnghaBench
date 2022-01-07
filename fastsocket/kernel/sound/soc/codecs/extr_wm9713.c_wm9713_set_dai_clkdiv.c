
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int AC97_CENTER_LFE_MASTER ;
 int AC97_HANDSET_RATE ;
 int AC97_LINE1_LEVEL ;
 int EINVAL ;







 int ac97_read (struct snd_soc_codec*,int ) ;
 int ac97_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm9713_set_dai_clkdiv(struct snd_soc_dai *codec_dai,
  int div_id, int div)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 u16 reg;

 switch (div_id) {
 case 129:
  reg = ac97_read(codec, AC97_HANDSET_RATE) & 0xf0ff;
  ac97_write(codec, AC97_HANDSET_RATE, reg | div);
  break;
 case 134:
  reg = ac97_read(codec, AC97_HANDSET_RATE) & 0xfffd;
  ac97_write(codec, AC97_HANDSET_RATE, reg | div);
  break;
 case 133:
  reg = ac97_read(codec, AC97_HANDSET_RATE) & 0xfffb;
  ac97_write(codec, AC97_HANDSET_RATE, reg | div);
  break;
 case 132:
  reg = ac97_read(codec, AC97_HANDSET_RATE) & 0x8fff;
  ac97_write(codec, AC97_HANDSET_RATE, reg | div);
  break;
 case 130:
  reg = ac97_read(codec, AC97_CENTER_LFE_MASTER) & 0xf1ff;
  ac97_write(codec, AC97_CENTER_LFE_MASTER, reg | div);
  break;
 case 128:
  reg = ac97_read(codec, AC97_LINE1_LEVEL) & 0xff80;
  ac97_write(codec, AC97_LINE1_LEVEL, reg | 0x60 | div);
  break;
 case 131:
  reg = ac97_read(codec, AC97_LINE1_LEVEL) & 0xff80;
  ac97_write(codec, AC97_LINE1_LEVEL, reg | 0x70 | div);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
