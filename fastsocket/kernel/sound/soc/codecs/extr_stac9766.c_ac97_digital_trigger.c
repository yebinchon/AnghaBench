
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int AC97_EXTENDED_STATUS ;

 unsigned short stac9766_ac97_read (struct snd_soc_codec*,int ) ;
 int stac9766_ac97_write (struct snd_soc_codec*,int ,unsigned short) ;

__attribute__((used)) static int ac97_digital_trigger(struct snd_pcm_substream *substream,
    int cmd, struct snd_soc_dai *dai)
{
 struct snd_soc_codec *codec = dai->codec;
 unsigned short vra;

 switch (cmd) {
 case 128:
  vra = stac9766_ac97_read(codec, AC97_EXTENDED_STATUS);
  vra &= !0x04;
  stac9766_ac97_write(codec, AC97_EXTENDED_STATUS, vra);
  break;
 }
 return 0;
}
