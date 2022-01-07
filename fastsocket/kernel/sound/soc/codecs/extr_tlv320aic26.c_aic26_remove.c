
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_device {int dummy; } ;
struct platform_device {int dummy; } ;


 struct snd_soc_device* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_free_pcms (struct snd_soc_device*) ;

__attribute__((used)) static int aic26_remove(struct platform_device *pdev)
{
 struct snd_soc_device *socdev = platform_get_drvdata(pdev);
 snd_soc_free_pcms(socdev);
 return 0;
}
