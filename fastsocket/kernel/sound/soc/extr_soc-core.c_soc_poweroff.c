
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_device {struct snd_soc_card* card; } ;
struct snd_soc_card {int delayed_work; int instantiated; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int run_delayed_work (int *) ;
 int snd_soc_dapm_shutdown (struct snd_soc_device*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int soc_poweroff(struct device *dev)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_card *card = socdev->card;

 if (!card->instantiated)
  return 0;



 run_delayed_work(&card->delayed_work);

 snd_soc_dapm_shutdown(socdev);

 return 0;
}
