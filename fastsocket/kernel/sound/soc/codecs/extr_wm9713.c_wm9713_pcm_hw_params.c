
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int AC97_CENTER_LFE_MASTER ;




 int ac97_read (struct snd_soc_codec*,int ) ;
 int ac97_write (struct snd_soc_codec*,int ,int) ;
 int params_format (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int wm9713_pcm_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct snd_soc_codec *codec = dai->codec;
 u16 reg = ac97_read(codec, AC97_CENTER_LFE_MASTER) & 0xfff3;

 switch (params_format(params)) {
 case 131:
  break;
 case 130:
  reg |= 0x0004;
  break;
 case 129:
  reg |= 0x0008;
  break;
 case 128:
  reg |= 0x000c;
  break;
 }


 ac97_write(codec, AC97_CENTER_LFE_MASTER, reg);
 return 0;
}
