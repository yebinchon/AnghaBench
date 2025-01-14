
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai_link* dai; struct snd_soc_device* socdev; } ;
struct snd_soc_device {struct snd_soc_card* card; } ;
struct snd_soc_dai_link {int rate; scalar_t__ symmetric_rates; struct snd_soc_dai* codec_dai; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {scalar_t__ symmetric_rates; } ;
struct snd_soc_card {int dev; } ;
struct snd_pcm_substream {int runtime; struct snd_soc_pcm_runtime* private_data; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,int) ;
 int snd_pcm_hw_constraint_minmax (int ,int ,int ,int ) ;

__attribute__((used)) static int soc_pcm_apply_symmetry(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_device *socdev = rtd->socdev;
 struct snd_soc_card *card = socdev->card;
 struct snd_soc_dai_link *machine = rtd->dai;
 struct snd_soc_dai *cpu_dai = machine->cpu_dai;
 struct snd_soc_dai *codec_dai = machine->codec_dai;
 int ret;

 if (codec_dai->symmetric_rates || cpu_dai->symmetric_rates ||
     machine->symmetric_rates) {
  dev_dbg(card->dev, "Symmetry forces %dHz rate\n",
   machine->rate);

  ret = snd_pcm_hw_constraint_minmax(substream->runtime,
         SNDRV_PCM_HW_PARAM_RATE,
         machine->rate,
         machine->rate);
  if (ret < 0) {
   dev_err(card->dev,
    "Unable to apply rate symmetry constraint: %d\n", ret);
   return ret;
  }
 }

 return 0;
}
