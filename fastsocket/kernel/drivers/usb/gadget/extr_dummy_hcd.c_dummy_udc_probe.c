
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_12__ {int release; int * parent; } ;
struct TYPE_10__ {int is_dualspeed; int is_otg; TYPE_5__ dev; int * ops; int name; } ;
struct dummy {TYPE_2__ gadget; } ;
struct TYPE_9__ {scalar_t__ otg_port; } ;
struct TYPE_11__ {TYPE_1__ self; } ;


 int dev_attr_function ;
 int dev_set_name (TYPE_5__*,char*) ;
 int device_create_file (TYPE_5__*,int *) ;
 int device_register (TYPE_5__*) ;
 int device_unregister (TYPE_5__*) ;
 int dummy_gadget_release ;
 int dummy_ops ;
 TYPE_3__* dummy_to_hcd (struct dummy*) ;
 int gadget_name ;
 int platform_set_drvdata (struct platform_device*,struct dummy*) ;
 struct dummy* the_controller ;
 int usb_get_hcd (TYPE_3__*) ;

__attribute__((used)) static int dummy_udc_probe (struct platform_device *pdev)
{
 struct dummy *dum = the_controller;
 int rc;

 dum->gadget.name = gadget_name;
 dum->gadget.ops = &dummy_ops;
 dum->gadget.is_dualspeed = 1;


 dum->gadget.is_otg = (dummy_to_hcd(dum)->self.otg_port != 0);

 dev_set_name(&dum->gadget.dev, "gadget");
 dum->gadget.dev.parent = &pdev->dev;
 dum->gadget.dev.release = dummy_gadget_release;
 rc = device_register (&dum->gadget.dev);
 if (rc < 0)
  return rc;

 usb_get_hcd (dummy_to_hcd (dum));

 platform_set_drvdata (pdev, dum);
 rc = device_create_file (&dum->gadget.dev, &dev_attr_function);
 if (rc < 0)
  device_unregister (&dum->gadget.dev);
 return rc;
}
