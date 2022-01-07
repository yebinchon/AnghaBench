
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_3__* socdev; TYPE_1__* dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {TYPE_5__* pcm; struct snd_soc_pcm_runtime* private_data; } ;
struct mpc8610_hpcd_data {int codec_clk_direction; int clk_frequency; int cpu_clk_direction; int dai_format; } ;
struct TYPE_10__ {TYPE_4__* card; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {TYPE_2__* dev; } ;
struct TYPE_7__ {struct mpc8610_hpcd_data* platform_data; } ;
struct TYPE_6__ {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;


 int dev_err (int ,char*) ;
 int snd_soc_dai_set_fmt (struct snd_soc_dai*,int ) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int ,int ) ;

__attribute__((used)) static int mpc8610_hpcd_startup(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->dai->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->dai->cpu_dai;
 struct mpc8610_hpcd_data *machine_data =
  rtd->socdev->dev->platform_data;
 int ret = 0;


 ret = snd_soc_dai_set_fmt(cpu_dai, machine_data->dai_format);
 if (ret < 0) {
  dev_err(substream->pcm->card->dev,
   "could not set CPU driver audio format\n");
  return ret;
 }


 ret = snd_soc_dai_set_fmt(codec_dai, machine_data->dai_format);
 if (ret < 0) {
  dev_err(substream->pcm->card->dev,
   "could not set codec driver audio format\n");
  return ret;
 }





 ret = snd_soc_dai_set_sysclk(cpu_dai, 0,
     machine_data->clk_frequency,
     machine_data->cpu_clk_direction);
 if (ret < 0) {
  dev_err(substream->pcm->card->dev,
   "could not set CPU driver clock parameters\n");
  return ret;
 }





 ret = snd_soc_dai_set_sysclk(codec_dai, 0,
     machine_data->clk_frequency,
     machine_data->codec_clk_direction);
 if (ret < 0) {
  dev_err(substream->pcm->card->dev,
   "could not set codec driver clock params\n");
  return ret;
 }

 return 0;
}
