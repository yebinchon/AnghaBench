
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* ssp; int irq; scalar_t__ port; } ;
struct ssp_priv {TYPE_3__ dev; } ;
struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {int * dma_data; scalar_t__ id; int active; struct ssp_priv* private_data; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_5__ {int clk; } ;
struct TYPE_4__ {struct snd_soc_dai* cpu_dai; } ;


 int NO_IRQ ;
 int clk_enable (int ) ;
 int kfree (int *) ;
 int ssp_disable (TYPE_3__*) ;

__attribute__((used)) static int pxa_ssp_startup(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
 struct ssp_priv *priv = cpu_dai->private_data;
 int ret = 0;

 if (!cpu_dai->active) {
  priv->dev.port = cpu_dai->id + 1;
  priv->dev.irq = NO_IRQ;
  clk_enable(priv->dev.ssp->clk);
  ssp_disable(&priv->dev);
 }

 if (cpu_dai->dma_data) {
  kfree(cpu_dai->dma_data);
  cpu_dai->dma_data = ((void*)0);
 }
 return ret;
}
