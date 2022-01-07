
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int name; int * bus; } ;
struct usb_gadget_driver {int (* bind ) (TYPE_6__*) ;scalar_t__ speed; TYPE_3__ driver; int setup; } ;
struct TYPE_10__ {TYPE_3__* driver; } ;
struct TYPE_12__ {TYPE_4__ dev; } ;
struct udc {TYPE_5__* regs; TYPE_6__ gadget; struct usb_gadget_driver* driver; TYPE_2__* ep; } ;
struct TYPE_11__ {int ctl; } ;
struct TYPE_7__ {int driver_data; } ;
struct TYPE_8__ {TYPE_1__ ep; } ;


 int AMD_CLEAR_BIT (int ) ;
 int DBG (struct udc*,char*,int ,int) ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int UDC_DEVCTL_SD ;
 size_t UDC_EP0IN_IX ;
 size_t UDC_EP0OUT_IX ;
 scalar_t__ USB_SPEED_HIGH ;
 int readl (int *) ;
 int setup_ep0 (struct udc*) ;
 int stub1 (TYPE_6__*) ;
 struct udc* udc ;
 int usb_connect (struct udc*) ;
 int writel (int,int *) ;

int usb_gadget_register_driver(struct usb_gadget_driver *driver)
{
 struct udc *dev = udc;
 int retval;
 u32 tmp;

 if (!driver || !driver->bind || !driver->setup
   || driver->speed != USB_SPEED_HIGH)
  return -EINVAL;
 if (!dev)
  return -ENODEV;
 if (dev->driver)
  return -EBUSY;

 driver->driver.bus = ((void*)0);
 dev->driver = driver;
 dev->gadget.dev.driver = &driver->driver;

 retval = driver->bind(&dev->gadget);




 dev->ep[UDC_EP0OUT_IX].ep.driver_data =
  dev->ep[UDC_EP0IN_IX].ep.driver_data;

 if (retval) {
  DBG(dev, "binding to %s returning %d\n",
    driver->driver.name, retval);
  dev->driver = ((void*)0);
  dev->gadget.dev.driver = ((void*)0);
  return retval;
 }


 setup_ep0(dev);


 tmp = readl(&dev->regs->ctl);
 tmp = tmp & AMD_CLEAR_BIT(UDC_DEVCTL_SD);
 writel(tmp, &dev->regs->ctl);

 usb_connect(dev);

 return 0;
}
