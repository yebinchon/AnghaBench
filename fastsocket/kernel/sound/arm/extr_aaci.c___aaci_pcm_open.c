
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_4__ {int fifo_size; } ;
struct snd_pcm_runtime {TYPE_2__ hw; struct aaci_runtime* private_data; } ;
struct aaci_runtime {struct snd_pcm_substream* substream; } ;
struct aaci {int fifosize; TYPE_1__* dev; } ;
struct TYPE_3__ {int * irq; } ;


 int DRIVER_NAME ;
 int IRQF_DISABLED ;
 int IRQF_SHARED ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 TYPE_2__ aaci_hw_info ;
 int aaci_irq ;
 int aaci_rule_rate_by_channels ;
 int request_irq (int ,int ,int,int ,struct aaci*) ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,struct aaci*,int ,int ,int) ;

__attribute__((used)) static int __aaci_pcm_open(struct aaci *aaci,
      struct snd_pcm_substream *substream,
      struct aaci_runtime *aacirun)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 int ret;

 aacirun->substream = substream;
 runtime->private_data = aacirun;
 runtime->hw = aaci_hw_info;
 runtime->hw.fifo_size = aaci->fifosize * 2;





 ret = snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
      aaci_rule_rate_by_channels, aaci,
      SNDRV_PCM_HW_PARAM_CHANNELS,
      SNDRV_PCM_HW_PARAM_RATE, -1);
 if (ret)
  goto out;

 ret = request_irq(aaci->dev->irq[0], aaci_irq, IRQF_SHARED|IRQF_DISABLED,
     DRIVER_NAME, aaci);
 if (ret)
  goto out;

 return 0;

 out:
 return ret;
}
