
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;






 int WM8974_ADD ;
 int WM8974_IFACE ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8974_pcm_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct snd_soc_codec *codec = dai->codec;
 u16 iface = snd_soc_read(codec, WM8974_IFACE) & 0x19f;
 u16 adn = snd_soc_read(codec, WM8974_ADD) & 0x1f1;


 switch (params_format(params)) {
 case 131:
  break;
 case 130:
  iface |= 0x0020;
  break;
 case 129:
  iface |= 0x0040;
  break;
 case 128:
  iface |= 0x0060;
  break;
 }


 switch (params_rate(params)) {
 case 8000:
  adn |= 0x5 << 1;
  break;
 case 11025:
  adn |= 0x4 << 1;
  break;
 case 16000:
  adn |= 0x3 << 1;
  break;
 case 22050:
  adn |= 0x2 << 1;
  break;
 case 32000:
  adn |= 0x1 << 1;
  break;
 case 44100:
 case 48000:
  break;
 }

 snd_soc_write(codec, WM8974_IFACE, iface);
 snd_soc_write(codec, WM8974_ADD, adn);
 return 0;
}
