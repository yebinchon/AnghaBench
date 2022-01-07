
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wm8753_priv {int pcmclk; } ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {struct wm8753_priv* private_data; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;






 int WM8753_PCM ;
 int WM8753_SRATE1 ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int wm8753_read_reg_cache (struct snd_soc_codec*,int ) ;
 int wm8753_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8753_pcm_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,
    struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;
 struct wm8753_priv *wm8753 = codec->private_data;
 u16 voice = wm8753_read_reg_cache(codec, WM8753_PCM) & 0x01f3;
 u16 srate = wm8753_read_reg_cache(codec, WM8753_SRATE1) & 0x017f;


 switch (params_format(params)) {
 case 131:
  break;
 case 130:
  voice |= 0x0004;
  break;
 case 129:
  voice |= 0x0008;
  break;
 case 128:
  voice |= 0x000c;
  break;
 }


 if (params_rate(params) * 384 == wm8753->pcmclk)
  srate |= 0x80;
 wm8753_write(codec, WM8753_SRATE1, srate);

 wm8753_write(codec, WM8753_PCM, voice);
 return 0;
}
