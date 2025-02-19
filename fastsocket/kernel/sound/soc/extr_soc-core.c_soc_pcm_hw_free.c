
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_platform {TYPE_2__* pcm_ops; } ;
struct snd_soc_pcm_runtime {struct snd_soc_dai_link* dai; struct snd_soc_device* socdev; } ;
struct snd_soc_device {struct snd_soc_card* card; } ;
struct snd_soc_dai_link {TYPE_1__* ops; struct snd_soc_dai* codec_dai; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {TYPE_3__* ops; } ;
struct snd_soc_codec {int active; } ;
struct snd_soc_card {struct snd_soc_codec* codec; struct snd_soc_platform* platform; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_6__ {int (* hw_free ) (struct snd_pcm_substream*,struct snd_soc_dai*) ;} ;
struct TYPE_5__ {int (* hw_free ) (struct snd_pcm_substream*) ;} ;
struct TYPE_4__ {int (* hw_free ) (struct snd_pcm_substream*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcm_mutex ;
 int snd_soc_dai_digital_mute (struct snd_soc_dai*,int) ;
 int stub1 (struct snd_pcm_substream*) ;
 int stub2 (struct snd_pcm_substream*) ;
 int stub3 (struct snd_pcm_substream*,struct snd_soc_dai*) ;
 int stub4 (struct snd_pcm_substream*,struct snd_soc_dai*) ;

__attribute__((used)) static int soc_pcm_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_dai_link *machine = rtd->dai;
 struct snd_soc_card *card = socdev->card;
 struct snd_soc_platform *platform = card->platform;
 struct snd_soc_dai *cpu_dai = machine->cpu_dai;
 struct snd_soc_dai *codec_dai = machine->codec_dai;
 struct snd_soc_codec *codec = card->codec;

 mutex_lock(&pcm_mutex);


 if (!codec->active)
  snd_soc_dai_digital_mute(codec_dai, 1);


 if (machine->ops && machine->ops->hw_free)
  machine->ops->hw_free(substream);


 if (platform->pcm_ops->hw_free)
  platform->pcm_ops->hw_free(substream);


 if (codec_dai->ops->hw_free)
  codec_dai->ops->hw_free(substream, codec_dai);

 if (cpu_dai->ops->hw_free)
  cpu_dai->ops->hw_free(substream, cpu_dai);

 mutex_unlock(&pcm_mutex);
 return 0;
}
