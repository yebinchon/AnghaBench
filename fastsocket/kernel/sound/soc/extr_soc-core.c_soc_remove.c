
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_platform {int (* remove ) (struct platform_device*) ;} ;
struct snd_soc_device {struct snd_soc_codec_device* codec_dev; struct snd_soc_card* card; } ;
struct snd_soc_dai {int (* remove ) (struct platform_device*,struct snd_soc_dai*) ;} ;
struct snd_soc_codec_device {int (* remove ) (struct platform_device*) ;} ;
struct snd_soc_card {int num_links; int (* remove ) (struct platform_device*) ;TYPE_1__* dai_link; int delayed_work; int instantiated; struct snd_soc_platform* platform; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dai* cpu_dai; } ;


 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int run_delayed_work (int *) ;
 int snd_soc_unregister_card (struct snd_soc_card*) ;
 int stub1 (struct platform_device*) ;
 int stub2 (struct platform_device*) ;
 int stub3 (struct platform_device*,struct snd_soc_dai*) ;
 int stub4 (struct platform_device*) ;

__attribute__((used)) static int soc_remove(struct platform_device *pdev)
{
 int i;
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_card *card = socdev->card;
 struct snd_soc_platform *platform = card->platform;
 struct snd_soc_codec_device *codec_dev = socdev->codec_dev;

 if (!card->instantiated)
  return 0;

 run_delayed_work(&card->delayed_work);

 if (platform->remove)
  platform->remove(pdev);

 if (codec_dev->remove)
  codec_dev->remove(pdev);

 for (i = 0; i < card->num_links; i++) {
  struct snd_soc_dai *cpu_dai = card->dai_link[i].cpu_dai;
  if (cpu_dai->remove)
   cpu_dai->remove(pdev, cpu_dai);
 }

 if (card->remove)
  card->remove(pdev);

 snd_soc_unregister_card(card);

 return 0;
}
