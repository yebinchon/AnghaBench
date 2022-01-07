
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;






 int WM8510_ADD ;
 int WM8510_IFACE ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8510_pcm_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;
 u16 iface = snd_soc_read(codec, WM8510_IFACE) & 0x19f;
 u16 adn = snd_soc_read(codec, WM8510_ADD) & 0x1f1;


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

 snd_soc_write(codec, WM8510_IFACE, iface);
 snd_soc_write(codec, WM8510_ADD, adn);
 return 0;
}
