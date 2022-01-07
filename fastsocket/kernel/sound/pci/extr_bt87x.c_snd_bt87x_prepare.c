
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; scalar_t__ format; } ;
struct snd_bt87x {int reg_control; int reg_lock; } ;


 int ANALOG_CLOCK ;
 int CTL_DA_SBR ;
 int CTL_DA_SDR_MASK ;
 int CTL_DA_SDR_SHIFT ;
 int REG_GPIO_DMA_CTL ;
 scalar_t__ SNDRV_PCM_FORMAT_S8 ;
 int snd_bt87x_writel (struct snd_bt87x*,int ,int) ;
 struct snd_bt87x* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_bt87x_prepare(struct snd_pcm_substream *substream)
{
 struct snd_bt87x *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int decimation;

 spin_lock_irq(&chip->reg_lock);
 chip->reg_control &= ~(CTL_DA_SDR_MASK | CTL_DA_SBR);
 decimation = (ANALOG_CLOCK + runtime->rate / 4) / runtime->rate;
 chip->reg_control |= decimation << CTL_DA_SDR_SHIFT;
 if (runtime->format == SNDRV_PCM_FORMAT_S8)
  chip->reg_control |= CTL_DA_SBR;
 snd_bt87x_writel(chip, REG_GPIO_DMA_CTL, chip->reg_control);
 spin_unlock_irq(&chip->reg_lock);
 return 0;
}
