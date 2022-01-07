
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_device* socdev; } ;
struct snd_soc_device {TYPE_1__* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_codec {int active; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int WM8731_ACTIVE ;
 int snd_soc_write (struct snd_soc_codec*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void wm8731_shutdown(struct snd_pcm_substream *substream,
       struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;


 if (!codec->active) {
  udelay(50);
  snd_soc_write(codec, WM8731_ACTIVE, 0x0);
 }
}
