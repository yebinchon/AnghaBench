
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct platform_device {int dummy; } ;


 int pxa2xx_ac97_hw_remove (int ) ;
 int to_platform_device (int ) ;

__attribute__((used)) static void pxa2xx_ac97_remove(struct platform_device *pdev,
          struct snd_soc_dai *dai)
{
 pxa2xx_ac97_hw_remove(to_platform_device(dai->dev));
}
