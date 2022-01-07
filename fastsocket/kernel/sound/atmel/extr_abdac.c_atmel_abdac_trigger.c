
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int chan; } ;
struct atmel_abdac {int sample_clk; TYPE_1__ dma; } ;


 int CTRL ;
 int DAC_BIT (int ) ;
 int DATA ;
 int EINVAL ;
 int EN ;






 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dac_writel (struct atmel_abdac*,int ,int ) ;
 int dw_dma_cyclic_start (int ) ;
 int dw_dma_cyclic_stop (int ) ;
 struct atmel_abdac* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int atmel_abdac_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct atmel_abdac *dac = snd_pcm_substream_chip(substream);
 int retval = 0;

 switch (cmd) {
 case 132:
 case 131:
 case 130:
  clk_enable(dac->sample_clk);
  retval = dw_dma_cyclic_start(dac->dma.chan);
  if (retval)
   goto out;
  dac_writel(dac, CTRL, DAC_BIT(EN));
  break;
 case 133:
 case 128:
 case 129:
  dw_dma_cyclic_stop(dac->dma.chan);
  dac_writel(dac, DATA, 0);
  dac_writel(dac, CTRL, 0);
  clk_disable(dac->sample_clk);
  break;
 default:
  retval = -EINVAL;
  break;
 }
out:
 return retval;
}
