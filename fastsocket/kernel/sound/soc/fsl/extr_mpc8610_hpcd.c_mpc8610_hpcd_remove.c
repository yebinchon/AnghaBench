
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct mpc8610_hpcd_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device {int dev; } ;
struct TYPE_3__ {scalar_t__ cpu_dai; } ;
struct mpc8610_hpcd_data {scalar_t__ guts; scalar_t__* dma_irq; scalar_t__* dma; scalar_t__ ssi; TYPE_1__ dai; } ;


 struct platform_device* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int fsl_ssi_destroy_dai (scalar_t__) ;
 int iounmap (scalar_t__) ;
 int irq_dispose_mapping (scalar_t__) ;
 int kfree (struct mpc8610_hpcd_data*) ;
 int platform_device_unregister (struct platform_device*) ;

__attribute__((used)) static int mpc8610_hpcd_remove(struct of_device *ofdev)
{
 struct platform_device *sound_device = dev_get_drvdata(&ofdev->dev);
 struct mpc8610_hpcd_data *machine_data =
  sound_device->dev.platform_data;

 platform_device_unregister(sound_device);

 if (machine_data->dai.cpu_dai)
  fsl_ssi_destroy_dai(machine_data->dai.cpu_dai);

 if (machine_data->ssi)
  iounmap(machine_data->ssi);

 if (machine_data->dma[0])
  iounmap(machine_data->dma[0]);

 if (machine_data->dma[1])
  iounmap(machine_data->dma[1]);

 if (machine_data->dma_irq[0])
  irq_dispose_mapping(machine_data->dma_irq[0]);

 if (machine_data->dma_irq[1])
  irq_dispose_mapping(machine_data->dma_irq[1]);

 if (machine_data->guts)
  iounmap(machine_data->guts);

 kfree(machine_data);
 sound_device->dev.platform_data = ((void*)0);

 dev_set_drvdata(&ofdev->dev, ((void*)0));

 return 0;
}
