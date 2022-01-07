
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int format; int rate; } ;
struct atmel_ac97c {int flags; TYPE_1__* pdev; int ac97; } ;
struct TYPE_2__ {int dev; } ;


 int A ;
 unsigned long AC97C_CH_ASSIGN (int ,int ) ;
 unsigned long AC97C_CH_MASK (int ) ;
 unsigned long AC97C_CMR_CEM_LITTLE ;
 unsigned long AC97C_CMR_DMAEN ;
 unsigned long AC97C_CMR_SIZE_16 ;
 unsigned long AC97C_CSR_OVRUN ;
 unsigned long AC97C_MR_VRA ;
 unsigned long AC97C_SR_CAEVT ;
 int AC97_PCM_LR_ADC_RATE ;
 int CAMR ;
 int DMA_FROM_DEVICE ;
 int DMA_RX_READY ;
 int EINVAL ;
 int ICA ;
 int IER ;
 int IMR ;
 int MR ;
 int PCM_LEFT ;
 int PCM_RIGHT ;


 unsigned long ac97c_readl (struct atmel_ac97c*,int ) ;
 int ac97c_writel (struct atmel_ac97c*,int ,unsigned long) ;
 int atmel_ac97c_prepare_dma (struct atmel_ac97c*,struct snd_pcm_substream*,int ) ;
 int dev_dbg (int *,char*,int) ;
 int snd_ac97_set_rate (int ,int ,int) ;
 struct atmel_ac97c* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int atmel_ac97c_capture_prepare(struct snd_pcm_substream *substream)
{
 struct atmel_ac97c *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned long word = ac97c_readl(chip, ICA);
 int retval;

 word &= ~(AC97C_CH_MASK(PCM_LEFT) | AC97C_CH_MASK(PCM_RIGHT));


 switch (runtime->channels) {
 case 1:
  word |= AC97C_CH_ASSIGN(PCM_LEFT, A);
  break;
 case 2:
  word |= AC97C_CH_ASSIGN(PCM_LEFT, A)
   | AC97C_CH_ASSIGN(PCM_RIGHT, A);
  break;
 default:

  return -EINVAL;
 }
 ac97c_writel(chip, ICA, word);


 word = AC97C_CMR_DMAEN | AC97C_CMR_SIZE_16;

 switch (runtime->format) {
 case 128:
  word |= AC97C_CMR_CEM_LITTLE;
  break;
 case 129:
  word &= ~(AC97C_CMR_CEM_LITTLE);
  break;
 default:
  word = ac97c_readl(chip, ICA);
  word &= ~(AC97C_CH_MASK(PCM_LEFT) | AC97C_CH_MASK(PCM_RIGHT));
  ac97c_writel(chip, ICA, word);
  return -EINVAL;
 }


 word |= AC97C_CSR_OVRUN;

 ac97c_writel(chip, CAMR, word);


 word = ac97c_readl(chip, IMR);
 word |= AC97C_SR_CAEVT;
 ac97c_writel(chip, IER, word);


 if (runtime->rate != 48000) {
  word = ac97c_readl(chip, MR);
  word |= AC97C_MR_VRA;
  ac97c_writel(chip, MR, word);
 } else {
  word = ac97c_readl(chip, MR);
  word &= ~(AC97C_MR_VRA);
  ac97c_writel(chip, MR, word);
 }

 retval = snd_ac97_set_rate(chip->ac97, AC97_PCM_LR_ADC_RATE,
   runtime->rate);
 if (retval)
  dev_dbg(&chip->pdev->dev, "could not set rate %d Hz\n",
    runtime->rate);

 if (!test_bit(DMA_RX_READY, &chip->flags))
  retval = atmel_ac97c_prepare_dma(chip, substream,
    DMA_FROM_DEVICE);

 return retval;
}
