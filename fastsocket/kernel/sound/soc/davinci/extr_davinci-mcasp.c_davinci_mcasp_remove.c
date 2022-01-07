
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_platform_data {size_t op_mode; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_4__ {struct snd_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct davinci_audio_dev {int * clk; } ;
struct TYPE_5__ {struct davinci_audio_dev* private_data; } ;


 int IORESOURCE_MEM ;
 int clk_disable (int *) ;
 int clk_put (int *) ;
 TYPE_2__* davinci_mcasp_dai ;
 int kfree (struct davinci_audio_dev*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 int snd_soc_unregister_dai (TYPE_2__*) ;

__attribute__((used)) static int davinci_mcasp_remove(struct platform_device *pdev)
{
 struct snd_platform_data *pdata = pdev->dev.platform_data;
 struct davinci_audio_dev *dev;
 struct resource *mem;

 snd_soc_unregister_dai(&davinci_mcasp_dai[pdata->op_mode]);
 dev = davinci_mcasp_dai[pdata->op_mode].private_data;
 clk_disable(dev->clk);
 clk_put(dev->clk);
 dev->clk = ((void*)0);

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(mem->start, (mem->end - mem->start) + 1);

 kfree(dev);

 return 0;
}
