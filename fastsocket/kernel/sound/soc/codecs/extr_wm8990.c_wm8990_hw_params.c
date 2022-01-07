
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






 int WM8990_AIF_WL_20BITS ;
 int WM8990_AIF_WL_24BITS ;
 int WM8990_AIF_WL_32BITS ;
 int WM8990_AIF_WL_MASK ;
 int WM8990_AUDIO_INTERFACE_1 ;
 int params_format (struct snd_pcm_hw_params*) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int ) ;

__attribute__((used)) static int wm8990_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;
 u16 audio1 = snd_soc_read(codec, WM8990_AUDIO_INTERFACE_1);

 audio1 &= ~WM8990_AIF_WL_MASK;

 switch (params_format(params)) {
 case 131:
  break;
 case 130:
  audio1 |= WM8990_AIF_WL_20BITS;
  break;
 case 129:
  audio1 |= WM8990_AIF_WL_24BITS;
  break;
 case 128:
  audio1 |= WM8990_AIF_WL_32BITS;
  break;
 }

 snd_soc_write(codec, WM8990_AUDIO_INTERFACE_1, audio1);
 return 0;
}
