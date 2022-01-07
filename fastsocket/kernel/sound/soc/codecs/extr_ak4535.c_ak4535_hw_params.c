
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {struct ak4535_priv* private_data; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct ak4535_priv {int sysclk; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int AK4535_MODE2 ;
 int ak4535_read_reg_cache (struct snd_soc_codec*,int ) ;
 int ak4535_write (struct snd_soc_codec*,int ,int) ;
 int params_rate (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int ak4535_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;
 struct ak4535_priv *ak4535 = codec->private_data;
 u8 mode2 = ak4535_read_reg_cache(codec, AK4535_MODE2) & ~(0x3 << 5);
 int rate = params_rate(params), fs = 256;

 if (rate)
  fs = ak4535->sysclk / rate;


 switch (fs) {
 case 1024:
  mode2 |= (0x2 << 5);
  break;
 case 512:
  mode2 |= (0x1 << 5);
  break;
 case 256:
  break;
 }


 ak4535_write(codec, AK4535_MODE2, mode2);
 return 0;
}
