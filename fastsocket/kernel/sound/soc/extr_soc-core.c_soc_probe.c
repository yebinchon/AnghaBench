
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_device {struct snd_soc_card* card; } ;
struct snd_soc_card {int * dev; struct snd_soc_device* socdev; } ;
struct platform_device {int dev; } ;


 int dev_err (int *,char*) ;
 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_register_card (struct snd_soc_card*) ;

__attribute__((used)) static int soc_probe(struct platform_device *pdev)
{
 int ret = 0;
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 struct snd_soc_card *card = socdev->card;


 card->socdev = socdev;


 card->dev = &pdev->dev;
 ret = snd_soc_register_card(card);
 if (ret != 0) {
  dev_err(&pdev->dev, "Failed to register card\n");
  return ret;
 }

 return 0;
}
