
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* extdata; scalar_t__ extlen; int vfebase; int vfeirq; } ;


 int IORESOURCE_MEM ;
 TYPE_1__* ctrl ;
 int disable_irq (int ) ;
 int free_irq (int ,int ) ;
 int iounmap (int ) ;
 int kfree (TYPE_1__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (scalar_t__,scalar_t__) ;

void vfe_cmd_release(struct platform_device *dev)
{
 struct resource *mem;

 disable_irq(ctrl->vfeirq);
 free_irq(ctrl->vfeirq, 0);

 iounmap(ctrl->vfebase);
 mem = platform_get_resource(dev, IORESOURCE_MEM, 0);
 release_mem_region(mem->start, (mem->end - mem->start) + 1);

 ctrl->extlen = 0;

 kfree(ctrl->extdata);
 kfree(ctrl);
}
