
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {int cpu_dai; } ;


 int SND_SOC_DAIFMT_CBM_CFM ;
 int SND_SOC_DAIFMT_DSP_A ;
 int SND_SOC_DAIFMT_NB_NF ;
 int snd_soc_dai_set_fmt (int ,int) ;

__attribute__((used)) static int ams_delta_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;


 return snd_soc_dai_set_fmt(rtd->dai->cpu_dai,
       SND_SOC_DAIFMT_DSP_A |
       SND_SOC_DAIFMT_NB_NF |
       SND_SOC_DAIFMT_CBM_CFM);
}
