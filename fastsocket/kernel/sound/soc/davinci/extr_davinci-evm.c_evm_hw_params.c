
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;


 int AUDIO_FORMAT ;
 int EINVAL ;
 int SND_SOC_CLOCK_OUT ;
 scalar_t__ machine_is_davinci_da830_evm () ;
 scalar_t__ machine_is_davinci_da850_evm () ;
 scalar_t__ machine_is_davinci_dm355_evm () ;
 scalar_t__ machine_is_davinci_dm6467_evm () ;
 scalar_t__ machine_is_davinci_evm () ;
 int snd_soc_dai_set_fmt (struct snd_soc_dai*,int ) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,unsigned int,int ) ;

__attribute__((used)) static int evm_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->dai->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
 int ret = 0;
 unsigned sysclk;


 if (machine_is_davinci_dm355_evm() || machine_is_davinci_dm6467_evm())
  sysclk = 27000000;





 else if (machine_is_davinci_evm())
  sysclk = 12288000;

 else if (machine_is_davinci_da830_evm() ||
    machine_is_davinci_da850_evm())
  sysclk = 24576000;

 else
  return -EINVAL;


 ret = snd_soc_dai_set_fmt(codec_dai, AUDIO_FORMAT);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_fmt(cpu_dai, AUDIO_FORMAT);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_sysclk(codec_dai, 0, sysclk, SND_SOC_CLOCK_OUT);
 if (ret < 0)
  return ret;

 return 0;
}
