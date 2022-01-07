
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;


 int EINVAL ;
 int R01_SFORI_I2S ;
 int R01_SFORI_LSB16 ;
 int R01_SFORI_MASK ;
 int R01_SFORI_MSB ;
 unsigned int SND_SOC_DAIFMT_CBS_CFS ;
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int UDA1380_IFACE ;
 int uda1380_read_reg_cache (struct snd_soc_codec*,int ) ;
 int uda1380_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int uda1380_set_dai_fmt_playback(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_codec *codec = codec_dai->codec;
 int iface;


 iface = uda1380_read_reg_cache(codec, UDA1380_IFACE);
 iface &= ~R01_SFORI_MASK;

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
  iface |= R01_SFORI_I2S;
  break;
 case 129:
  iface |= R01_SFORI_LSB16;
  break;
 case 128:
  iface |= R01_SFORI_MSB;
 }


 if ((fmt & SND_SOC_DAIFMT_MASTER_MASK) != SND_SOC_DAIFMT_CBS_CFS)
  return -EINVAL;

 uda1380_write(codec, UDA1380_IFACE, iface);

 return 0;
}
