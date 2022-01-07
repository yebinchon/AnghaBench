
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct atmel_ssc_info {int dir_mask; int lock; TYPE_2__* ssc; } ;
struct TYPE_6__ {size_t id; } ;
struct TYPE_5__ {int regs; } ;
struct TYPE_4__ {TYPE_3__* cpu_dai; } ;


 int EBUSY ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SR ;
 int SSC_DIR_MASK_CAPTURE ;
 int SSC_DIR_MASK_PLAYBACK ;
 int pr_debug (char*,int ) ;
 struct snd_soc_pcm_runtime* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct atmel_ssc_info* ssc_info ;
 int ssc_readl (int ,int ) ;

__attribute__((used)) static int atmel_ssc_startup(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = snd_pcm_substream_chip(substream);
 struct atmel_ssc_info *ssc_p = &ssc_info[rtd->dai->cpu_dai->id];
 int dir_mask;

 pr_debug("atmel_ssc_startup: SSC_SR=0x%u\n",
  ssc_readl(ssc_p->ssc->regs, SR));

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  dir_mask = SSC_DIR_MASK_PLAYBACK;
 else
  dir_mask = SSC_DIR_MASK_CAPTURE;

 spin_lock_irq(&ssc_p->lock);
 if (ssc_p->dir_mask & dir_mask) {
  spin_unlock_irq(&ssc_p->lock);
  return -EBUSY;
 }
 ssc_p->dir_mask |= dir_mask;
 spin_unlock_irq(&ssc_p->lock);

 return 0;
}
