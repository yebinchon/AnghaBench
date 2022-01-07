
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9aclc_plat_drvdata {scalar_t__ base; } ;
struct snd_soc_dai {int dev; } ;
struct platform_device {int dummy; } ;


 scalar_t__ ACCTLDIS ;
 int ACCTL_ENLINK ;
 int __raw_writel (int ,scalar_t__) ;
 struct txx9aclc_plat_drvdata* platform_get_drvdata (struct platform_device*) ;
 struct platform_device* to_platform_device (int ) ;
 int * txx9aclc_soc_dev ;

__attribute__((used)) static void txx9aclc_ac97_remove(struct platform_device *pdev,
     struct snd_soc_dai *dai)
{
 struct platform_device *aclc_pdev = to_platform_device(dai->dev);
 struct txx9aclc_plat_drvdata *drvdata = platform_get_drvdata(aclc_pdev);


 __raw_writel(ACCTL_ENLINK, drvdata->base + ACCTLDIS);
 txx9aclc_soc_dev = ((void*)0);
}
