
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {int private_data; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct omap_mcbsp_data {int active; int bus_id; } ;
struct TYPE_2__ {struct snd_soc_dai* cpu_dai; } ;


 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;






 int omap_mcbsp_start (int ,int,int) ;
 int omap_mcbsp_stop (int ,int,int) ;
 struct omap_mcbsp_data* to_mcbsp (int ) ;

__attribute__((used)) static int omap_mcbsp_dai_trigger(struct snd_pcm_substream *substream, int cmd,
      struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
 struct omap_mcbsp_data *mcbsp_data = to_mcbsp(cpu_dai->private_data);
 int err = 0, play = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  mcbsp_data->active++;
  omap_mcbsp_start(mcbsp_data->bus_id, play, !play);
  break;

 case 129:
 case 128:
 case 133:
  omap_mcbsp_stop(mcbsp_data->bus_id, play, !play);
  mcbsp_data->active--;
  break;
 default:
  err = -EINVAL;
 }

 return err;
}
