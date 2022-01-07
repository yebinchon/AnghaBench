
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct aic26 {int dummy; } ;


 int aic26_dai ;
 struct aic26* dev_get_drvdata (int *) ;
 int kfree (struct aic26*) ;
 int snd_soc_unregister_dai (int *) ;

__attribute__((used)) static int aic26_spi_remove(struct spi_device *spi)
{
 struct aic26 *aic26 = dev_get_drvdata(&spi->dev);

 snd_soc_unregister_dai(&aic26_dai);
 kfree(aic26);

 return 0;
}
