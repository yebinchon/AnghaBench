
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct wm8731_priv {int sysclk; } ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {struct wm8731_priv* private_data; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_4__ {int sr; int bosr; int usb; } ;
struct TYPE_3__ {struct snd_soc_codec* codec; } ;





 int WM8731_IFACE ;
 int WM8731_SRATE ;
 TYPE_2__* coeff_div ;
 int get_coeff (int ,int ) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8731_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;
 struct wm8731_priv *wm8731 = codec->private_data;
 u16 iface = snd_soc_read(codec, WM8731_IFACE) & 0xfff3;
 int i = get_coeff(wm8731->sysclk, params_rate(params));
 u16 srate = (coeff_div[i].sr << 2) |
  (coeff_div[i].bosr << 1) | coeff_div[i].usb;

 snd_soc_write(codec, WM8731_SRATE, srate);


 switch (params_format(params)) {
 case 130:
  break;
 case 129:
  iface |= 0x0004;
  break;
 case 128:
  iface |= 0x0008;
  break;
 }

 snd_soc_write(codec, WM8731_IFACE, iface);
 return 0;
}
