
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {scalar_t__ id; int active; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {struct snd_soc_dai* cpu_dai; } ;


 scalar_t__ IMX_DAI_SSI0 ;
 scalar_t__ IMX_DAI_SSI2 ;
 size_t SSI1_PORT ;
 scalar_t__ SSI1_SCR ;
 size_t SSI2_PORT ;
 scalar_t__ SSI2_SCR ;
 int clk_disable (int ) ;
 int* ssi_active ;
 int ssi_clk0 ;
 int ssi_clk1 ;

__attribute__((used)) static void imx_ssi_shutdown(struct snd_pcm_substream *substream,
   struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;


 if (!cpu_dai->active) {

  if (cpu_dai->id == IMX_DAI_SSI0 ||
   cpu_dai->id == IMX_DAI_SSI2) {

   if (--ssi_active[SSI1_PORT] > 1)
    return;

   SSI1_SCR = 0;
   clk_disable(ssi_clk0);
  } else {
   if (--ssi_active[SSI2_PORT])
    return;
   SSI2_SCR = 0;
   clk_disable(ssi_clk1);
  }
 }
}
