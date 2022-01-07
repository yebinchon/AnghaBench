
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
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; } ;
struct TYPE_2__ {struct snd_soc_codec* codec; } ;


 int AC97_EXTENDED_STATUS ;
 int AC97_PCI_SID ;
 int AC97_PCM_SURR_DAC_RATE ;
 int ENODEV ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int ac97_read (struct snd_soc_codec*,int ) ;
 int ac97_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int ac97_aux_prepare(struct snd_pcm_substream *substream,
       struct snd_soc_dai *dai)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_codec *codec = socdev->card->codec;
 u16 vra, xsle;

 vra = ac97_read(codec, AC97_EXTENDED_STATUS);
 ac97_write(codec, AC97_EXTENDED_STATUS, vra | 0x1);
 xsle = ac97_read(codec, AC97_PCI_SID);
 ac97_write(codec, AC97_PCI_SID, xsle | 0x8000);

 if (substream->stream != SNDRV_PCM_STREAM_PLAYBACK)
  return -ENODEV;

 return ac97_write(codec, AC97_PCM_SURR_DAC_RATE, runtime->rate);
}
