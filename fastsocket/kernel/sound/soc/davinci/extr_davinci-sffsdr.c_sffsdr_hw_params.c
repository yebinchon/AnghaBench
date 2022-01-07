
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dai* cpu_dai; } ;


 int AUDIO_FORMAT ;
 int EINVAL ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int pr_debug (char*,...) ;
 int sffsdr_fpga_set_codec_fs (int) ;
 int snd_soc_dai_set_fmt (struct snd_soc_dai*,int ) ;

__attribute__((used)) static int sffsdr_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
 int fs;
 int ret = 0;


 fs = params_rate(params);



 if (fs != 44100) {
  pr_debug("warning: only 44.1 kHz is supported without SFFSDR FPGA module\n");
  return -EINVAL;
 }



 ret = snd_soc_dai_set_fmt(cpu_dai, AUDIO_FORMAT);
 if (ret < 0)
  return ret;

 pr_debug("sffsdr_hw_params: rate = %d Hz\n", fs);


 return 0;



}
