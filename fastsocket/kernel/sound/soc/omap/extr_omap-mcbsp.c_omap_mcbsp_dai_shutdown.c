
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {int active; int private_data; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct omap_mcbsp_data {scalar_t__ configured; int bus_id; } ;
struct TYPE_2__ {struct snd_soc_dai* cpu_dai; } ;


 int omap_mcbsp_free (int ) ;
 struct omap_mcbsp_data* to_mcbsp (int ) ;

__attribute__((used)) static void omap_mcbsp_dai_shutdown(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
 struct omap_mcbsp_data *mcbsp_data = to_mcbsp(cpu_dai->private_data);

 if (!cpu_dai->active) {
  omap_mcbsp_free(mcbsp_data->bus_id);
  mcbsp_data->configured = 0;
 }
}
