
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


 int EINVAL ;



 int WM8728_DACCTL ;
 int params_format (struct snd_pcm_hw_params*) ;
 int snd_soc_read (struct snd_soc_codec*,int ) ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int wm8728_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params,
 struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;
 u16 dac = snd_soc_read(codec, WM8728_DACCTL);

 dac &= ~0x18;

 switch (params_format(params)) {
 case 130:
  break;
 case 129:
  dac |= 0x10;
  break;
 case 128:
  dac |= 0x08;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_write(codec, WM8728_DACCTL, dac);

 return 0;
}
