
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {TYPE_2__* ops; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_4__ {int (* set_pll ) (struct snd_soc_dai*,int ,int ,int ) ;} ;
struct TYPE_3__ {struct snd_soc_dai* codec_dai; } ;


 int IGNORED_ARG ;
 int stub1 (struct snd_soc_dai*,int ,int ,int ) ;

__attribute__((used)) static int mx27vis_hifi_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->dai->codec_dai;


 return codec_dai->ops->set_pll(codec_dai, IGNORED_ARG, 0, 0);
}
