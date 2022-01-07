
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct device {int dummy; } ;
typedef int resource_size_t ;
struct TYPE_8__ {struct device* parent; } ;
struct TYPE_11__ {int name; TYPE_2__ dev; } ;
struct TYPE_10__ {int start; int end; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_9__ {TYPE_1__ driver; } ;


 int EBUSY ;
 TYPE_5__ platform_dev ;
 int platform_device_register (TYPE_5__*) ;
 TYPE_4__* resources ;
 TYPE_3__ sl811h_driver ;

__attribute__((used)) static int sl811_hc_init(struct device *parent, resource_size_t base_addr,
    int irq)
{
 if (platform_dev.dev.parent)
  return -EBUSY;
 platform_dev.dev.parent = parent;


 resources[0].start = irq;

 resources[1].start = base_addr;
 resources[1].end = base_addr;

 resources[2].start = base_addr + 1;
 resources[2].end = base_addr + 1;





 platform_dev.name = sl811h_driver.driver.name;
 return platform_device_register(&platform_dev);
}
