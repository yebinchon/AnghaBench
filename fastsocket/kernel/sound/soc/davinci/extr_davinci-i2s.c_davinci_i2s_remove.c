
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dummy; } ;
struct davinci_mcbsp_dev {int * clk; } ;
struct TYPE_3__ {struct davinci_mcbsp_dev* private_data; } ;


 int IORESOURCE_MEM ;
 int clk_disable (int *) ;
 int clk_put (int *) ;
 TYPE_1__ davinci_i2s_dai ;
 int kfree (struct davinci_mcbsp_dev*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (scalar_t__,scalar_t__) ;
 int snd_soc_unregister_dai (TYPE_1__*) ;

__attribute__((used)) static int davinci_i2s_remove(struct platform_device *pdev)
{
 struct davinci_mcbsp_dev *dev = davinci_i2s_dai.private_data;
 struct resource *mem;

 snd_soc_unregister_dai(&davinci_i2s_dai);
 clk_disable(dev->clk);
 clk_put(dev->clk);
 dev->clk = ((void*)0);
 kfree(dev);
 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(mem->start, (mem->end - mem->start) + 1);

 return 0;
}
