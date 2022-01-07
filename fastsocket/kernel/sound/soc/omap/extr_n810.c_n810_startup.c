
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* socdev; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {struct snd_soc_codec* codec; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int clk_enable (int ) ;
 int n810_ext_control (struct snd_soc_codec*) ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int,int) ;
 int sys_clkout2 ;

__attribute__((used)) static int n810_startup(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_codec *codec = rtd->socdev->card->codec;

 snd_pcm_hw_constraint_minmax(runtime,
         SNDRV_PCM_HW_PARAM_CHANNELS, 2, 2);

 n810_ext_control(codec);
 return clk_enable(sys_clkout2);
}
