
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int tx_chan; } ;
struct atmel_ac97c {int opened; TYPE_1__ dma; } ;


 unsigned long AC97C_CMR_CENA ;
 int CAMR ;
 int EINVAL ;






 unsigned long ac97c_readl (struct atmel_ac97c*,int ) ;
 int ac97c_writel (struct atmel_ac97c*,int ,unsigned long) ;
 int dw_dma_cyclic_start (int ) ;
 int dw_dma_cyclic_stop (int ) ;
 struct atmel_ac97c* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int
atmel_ac97c_playback_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct atmel_ac97c *chip = snd_pcm_substream_chip(substream);
 unsigned long camr;
 int retval = 0;

 camr = ac97c_readl(chip, CAMR);

 switch (cmd) {
 case 132:
 case 131:
 case 130:
  retval = dw_dma_cyclic_start(chip->dma.tx_chan);
  if (retval)
   goto out;
  camr |= AC97C_CMR_CENA;
  break;
 case 133:
 case 128:
 case 129:
  dw_dma_cyclic_stop(chip->dma.tx_chan);
  if (chip->opened <= 1)
   camr &= ~AC97C_CMR_CENA;
  break;
 default:
  retval = -EINVAL;
  goto out;
 }

 ac97c_writel(chip, CAMR, camr);
out:
 return retval;
}
