
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {scalar_t__ speed; } ;
struct s3c2410_udc {int lock; TYPE_5__* ep; void* ep0state; TYPE_3__ gadget; TYPE_2__* driver; scalar_t__ address; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int maxpacket; } ;
struct TYPE_9__ {TYPE_1__ ep; } ;
struct TYPE_7__ {int (* suspend ) (TYPE_3__*) ;int (* resume ) (TYPE_3__*) ;} ;


 int DEBUG_NORMAL ;
 int DEBUG_VERBOSE ;
 void* EP0_IDLE ;
 int IRQ_HANDLED ;
 int IRQ_USBD ;
 int S3C2410_ENDPOINTS ;
 int S3C2410_UDC_EP_INT_REG ;
 int S3C2410_UDC_INDEX_EP0 ;
 int S3C2410_UDC_INDEX_REG ;
 int S3C2410_UDC_INT_EP0 ;
 int S3C2410_UDC_IN_CSR1_REG ;
 int S3C2410_UDC_MAXP_REG ;
 int S3C2410_UDC_PWR_REG ;
 int S3C2410_UDC_USBINT_RESET ;
 int S3C2410_UDC_USBINT_RESUME ;
 int S3C2410_UDC_USBINT_SUSPEND ;
 int S3C2410_UDC_USB_INT_REG ;
 scalar_t__ USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int base_addr ;
 int dprintk (int ,char*,...) ;
 int s3c2410_udc_handle_ep (TYPE_5__*) ;
 int s3c2410_udc_handle_ep0 (struct s3c2410_udc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 int udc_read (int ) ;
 int udc_write (int,int ) ;
 int udc_writeb (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t s3c2410_udc_irq(int dummy, void *_dev)
{
 struct s3c2410_udc *dev = _dev;
 int usb_status;
 int usbd_status;
 int pwr_reg;
 int ep0csr;
 int i;
 u32 idx;
 unsigned long flags;

 spin_lock_irqsave(&dev->lock, flags);


 if (!dev->driver) {

  udc_write(udc_read(S3C2410_UDC_USB_INT_REG),
    S3C2410_UDC_USB_INT_REG);
  udc_write(udc_read(S3C2410_UDC_EP_INT_REG),
    S3C2410_UDC_EP_INT_REG);
 }


 idx = udc_read(S3C2410_UDC_INDEX_REG);


 usb_status = udc_read(S3C2410_UDC_USB_INT_REG);
 usbd_status = udc_read(S3C2410_UDC_EP_INT_REG);
 pwr_reg = udc_read(S3C2410_UDC_PWR_REG);

 udc_writeb(base_addr, S3C2410_UDC_INDEX_EP0, S3C2410_UDC_INDEX_REG);
 ep0csr = udc_read(S3C2410_UDC_IN_CSR1_REG);

 dprintk(DEBUG_NORMAL, "usbs=%02x, usbds=%02x, pwr=%02x ep0csr=%02x\n",
  usb_status, usbd_status, pwr_reg, ep0csr);
 if (usb_status & S3C2410_UDC_USBINT_RESET) {




  dprintk(DEBUG_NORMAL, "USB reset csr %x pwr %x\n",
   ep0csr, pwr_reg);

  dev->gadget.speed = USB_SPEED_UNKNOWN;
  udc_write(0x00, S3C2410_UDC_INDEX_REG);
  udc_write((dev->ep[0].ep.maxpacket & 0x7ff) >> 3,
    S3C2410_UDC_MAXP_REG);
  dev->address = 0;

  dev->ep0state = EP0_IDLE;
  dev->gadget.speed = USB_SPEED_FULL;


  udc_write(S3C2410_UDC_USBINT_RESET,
    S3C2410_UDC_USB_INT_REG);

  udc_write(idx, S3C2410_UDC_INDEX_REG);
  spin_unlock_irqrestore(&dev->lock, flags);
  return IRQ_HANDLED;
 }


 if (usb_status & S3C2410_UDC_USBINT_RESUME) {
  dprintk(DEBUG_NORMAL, "USB resume\n");


  udc_write(S3C2410_UDC_USBINT_RESUME,
    S3C2410_UDC_USB_INT_REG);

  if (dev->gadget.speed != USB_SPEED_UNKNOWN
    && dev->driver
    && dev->driver->resume)
   dev->driver->resume(&dev->gadget);
 }


 if (usb_status & S3C2410_UDC_USBINT_SUSPEND) {
  dprintk(DEBUG_NORMAL, "USB suspend\n");


  udc_write(S3C2410_UDC_USBINT_SUSPEND,
    S3C2410_UDC_USB_INT_REG);

  if (dev->gadget.speed != USB_SPEED_UNKNOWN
    && dev->driver
    && dev->driver->suspend)
   dev->driver->suspend(&dev->gadget);

  dev->ep0state = EP0_IDLE;
 }






 if (usbd_status & S3C2410_UDC_INT_EP0) {
  dprintk(DEBUG_VERBOSE, "USB ep0 irq\n");

  udc_write(S3C2410_UDC_INT_EP0, S3C2410_UDC_EP_INT_REG);
  s3c2410_udc_handle_ep0(dev);
 }


 for (i = 1; i < S3C2410_ENDPOINTS; i++) {
  u32 tmp = 1 << i;
  if (usbd_status & tmp) {
   dprintk(DEBUG_VERBOSE, "USB ep%d irq\n", i);


   udc_write(tmp, S3C2410_UDC_EP_INT_REG);
   s3c2410_udc_handle_ep(&dev->ep[i]);
  }
 }

 dprintk(DEBUG_VERBOSE, "irq: %d s3c2410_udc_done.\n", IRQ_USBD);


 udc_write(idx, S3C2410_UDC_INDEX_REG);

 spin_unlock_irqrestore(&dev->lock, flags);

 return IRQ_HANDLED;
}
