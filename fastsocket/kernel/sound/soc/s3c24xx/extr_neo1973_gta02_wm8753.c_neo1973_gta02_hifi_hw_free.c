
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_2__ {struct snd_soc_dai* codec_dai; } ;


 int WM8753_PLL1 ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,int ) ;

__attribute__((used)) static int neo1973_gta02_hifi_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->dai->codec_dai;


 return snd_soc_dai_set_pll(codec_dai, WM8753_PLL1, 0, 0);
}
