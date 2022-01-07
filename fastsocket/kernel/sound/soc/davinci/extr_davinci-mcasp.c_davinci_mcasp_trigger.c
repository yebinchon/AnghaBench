
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;
struct davinci_audio_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* cpu_dai; } ;
struct TYPE_3__ {struct davinci_audio_dev* private_data; } ;


 int EINVAL ;






 int davinci_mcasp_start (struct davinci_audio_dev*,int ) ;
 int davinci_mcasp_stop (struct davinci_audio_dev*,int ) ;

__attribute__((used)) static int davinci_mcasp_trigger(struct snd_pcm_substream *substream,
         int cmd, struct snd_soc_dai *cpu_dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct davinci_audio_dev *dev = rtd->dai->cpu_dai->private_data;
 int ret = 0;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  davinci_mcasp_start(dev, substream->stream);
  break;

 case 129:
 case 128:
 case 133:
  davinci_mcasp_stop(dev, substream->stream);
  break;

 default:
  ret = -EINVAL;
 }

 return ret;
}
