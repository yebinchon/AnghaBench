
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct usb_interface {int dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_18__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_8__* endpoint; TYPE_5__ desc; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_13__ {int * parent; } ;
struct TYPE_16__ {int bcdDevice; int idProduct; int idVendor; } ;
struct usb_device {TYPE_11__ dev; TYPE_3__ descriptor; } ;
struct TYPE_19__ {TYPE_9__* urb; int dma; TYPE_7__* desc; int * buf; } ;
struct TYPE_14__ {TYPE_9__* urb; int dma; TYPE_7__* desc; int * buf; } ;
struct TYPE_17__ {int buf; int q; int p; } ;
struct mimio {int present; int greeted; struct input_dev* idev; int rxhandler; TYPE_6__ in; struct usb_device* udev; int phys; TYPE_1__ out; int txlock; int waitq; TYPE_4__ pktbuf; struct usb_interface* uifc; } ;
struct TYPE_15__ {void* version; void* product; void* vendor; int bustype; } ;
struct input_dev {int* evbit; int* keybit; int* absbit; int* absmax; int* absfuzz; TYPE_11__ dev; int phys; int name; scalar_t__* absflat; scalar_t__* absmin; TYPE_2__ id; int close; int open; } ;
struct TYPE_22__ {struct usb_device* dev; int transfer_flags; int transfer_dma; } ;
struct TYPE_20__ {int bInterval; int bEndpointAddress; } ;
struct TYPE_21__ {TYPE_7__ desc; } ;


 size_t ABS_MISC ;
 size_t ABS_X ;
 size_t ABS_Y ;
 int BIT (int ) ;
 int BIT_MASK (size_t) ;
 size_t BIT_WORD (size_t) ;
 size_t BTN_0 ;
 size_t BTN_1 ;
 size_t BTN_2 ;
 size_t BTN_3 ;
 size_t BTN_4 ;
 size_t BTN_5 ;
 size_t BTN_MISC ;
 int BTN_TOOL_PEN ;
 int BUS_USB ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int EV_ABS ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int LOCALBTN_TOOL_EXTRA2 ;
 int MIMIO_MAXNAMELEN ;
 int MIMIO_MAXPAYLOAD ;
 int MIMIO_XRANGE_MAX ;
 int MIMIO_YRANGE_MAX ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int dev_dbg (TYPE_11__*,char*,...) ;
 int dev_err (TYPE_11__*,char*,...) ;
 int init_waitqueue_head (int *) ;
 struct input_dev* input_allocate_device () ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,size_t,int ,int ,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct mimio*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 struct mimio* kzalloc (int,int ) ;
 void* le16_to_cpu (int ) ;
 int mimio_close ;
 int mimio_dealloc (struct mimio*) ;
 int mimio_greet (struct mimio*) ;
 int mimio_irq_in ;
 int mimio_irq_out ;
 int mimio_name ;
 int mimio_open ;
 int mimio_rx_handler ;
 int msleep (int) ;
 int set_bit (int,int*) ;
 int snprintf (int ,int ,char*,char*) ;
 int spin_lock_init (int *) ;
 void* usb_alloc_urb (int ,int ) ;
 void* usb_buffer_alloc (struct usb_device*,int,int ,int *) ;
 int usb_fill_int_urb (TYPE_9__*,struct usb_device*,int,int *,int,int ,struct mimio*,int ) ;
 int usb_make_path (struct usb_device*,char*,int) ;
 int usb_maxpacket (struct usb_device*,int,int ) ;
 int usb_pipeout (int) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct mimio*) ;
 int usb_sndintpipe (struct usb_device*,int ) ;
 int usb_submit_urb (TYPE_9__*,int ) ;

__attribute__((used)) static int mimio_probe(struct usb_interface *ifc,
         const struct usb_device_id *id)
{
 char path[64];
 int pipe, maxp;
 struct mimio *mimio;
 struct usb_device *udev;
 struct usb_host_interface *hostifc;
 struct input_dev *input_dev;
 int res = 0;
 int i;

 udev = interface_to_usbdev(ifc);

 mimio = kzalloc(sizeof(struct mimio), GFP_KERNEL);
 if (!mimio)
  return -ENOMEM;

 input_dev = input_allocate_device();
 if (!input_dev) {
  mimio_dealloc(mimio);
  return -ENOMEM;
 }

 mimio->uifc = ifc;
 mimio->udev = udev;
 mimio->pktbuf.p = mimio->pktbuf.buf;
 mimio->pktbuf.q = mimio->pktbuf.buf;

 mimio->idev = input_dev;
 init_waitqueue_head(&mimio->waitq);
 spin_lock_init(&mimio->txlock);
 hostifc = ifc->cur_altsetting;

 if (hostifc->desc.bNumEndpoints != 2) {
  dev_err(&udev->dev, "Unexpected endpoint count: %d.\n",
   hostifc->desc.bNumEndpoints);
  mimio_dealloc(mimio);
  return -ENODEV;
 }

 mimio->in.desc = &(hostifc->endpoint[0].desc);
 mimio->out.desc = &(hostifc->endpoint[1].desc);

 mimio->in.buf = usb_buffer_alloc(udev, MIMIO_MAXPAYLOAD, GFP_KERNEL,
      &mimio->in.dma);
 mimio->out.buf = usb_buffer_alloc(udev, MIMIO_MAXPAYLOAD, GFP_KERNEL,
       &mimio->out.dma);

 if (mimio->in.buf == ((void*)0) || mimio->out.buf == ((void*)0)) {
  dev_err(&udev->dev, "usb_buffer_alloc failure.\n");
  mimio_dealloc(mimio);
  return -ENOMEM;
 }

 mimio->in.urb = usb_alloc_urb(0, GFP_KERNEL);
 mimio->out.urb = usb_alloc_urb(0, GFP_KERNEL);

 if (mimio->in.urb == ((void*)0) || mimio->out.urb == ((void*)0)) {
  dev_err(&udev->dev, "usb_alloc_urb failure.\n");
  mimio_dealloc(mimio);
  return -ENOMEM;
 }




 pipe = usb_rcvintpipe(udev, mimio->in.desc->bEndpointAddress);
 maxp = usb_maxpacket(udev, pipe, usb_pipeout(pipe));
 if (maxp > MIMIO_MAXPAYLOAD)
  maxp = MIMIO_MAXPAYLOAD;
 usb_fill_int_urb(mimio->in.urb, udev, pipe, mimio->in.buf, maxp,
    mimio_irq_in, mimio, mimio->in.desc->bInterval);
 mimio->in.urb->transfer_dma = mimio->in.dma;
 mimio->in.urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;




 pipe = usb_sndintpipe(udev, mimio->out.desc->bEndpointAddress);
 maxp = usb_maxpacket(udev, pipe, usb_pipeout(pipe));
 if (maxp > MIMIO_MAXPAYLOAD)
  maxp = MIMIO_MAXPAYLOAD;
 usb_fill_int_urb(mimio->out.urb, udev, pipe, mimio->out.buf, maxp,
    mimio_irq_out, mimio, mimio->out.desc->bInterval);
 mimio->out.urb->transfer_dma = mimio->out.dma;
 mimio->out.urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;




 usb_make_path(udev, path, 64);
 snprintf(mimio->phys, MIMIO_MAXNAMELEN, "%s/input0", path);
 input_set_drvdata(input_dev, mimio);

 input_dev->open = mimio_open;
 input_dev->close = mimio_close;
 input_dev->name = mimio_name;
 input_dev->phys = mimio->phys;
 input_dev->dev.parent = &ifc->dev;

 input_dev->id.bustype = BUS_USB;
 input_dev->id.vendor = le16_to_cpu(udev->descriptor.idVendor);
 input_dev->id.product = le16_to_cpu(udev->descriptor.idProduct);
 input_dev->id.version = le16_to_cpu(udev->descriptor.bcdDevice);

 input_dev->evbit[0] |= BIT(EV_KEY) | BIT(EV_ABS);
 for (i = BTN_TOOL_PEN; i <= LOCALBTN_TOOL_EXTRA2; ++i)
  set_bit(i, input_dev->keybit);

 input_dev->keybit[BIT_WORD(BTN_MISC)] |= BIT_MASK(BTN_0) |
       BIT_MASK(BTN_1) |
       BIT_MASK(BTN_2) |
       BIT_MASK(BTN_3) |
       BIT_MASK(BTN_4) |
       BIT_MASK(BTN_5);

 input_dev->absbit[0] |= BIT_MASK(ABS_X) | BIT_MASK(ABS_Y);
 input_set_abs_params(input_dev, ABS_X, 0, MIMIO_XRANGE_MAX, 0, 0);
 input_set_abs_params(input_dev, ABS_Y, 0, MIMIO_YRANGE_MAX, 0, 0);
 input_dev->absbit[BIT_WORD(ABS_MISC)] |= BIT_MASK(ABS_MISC);
 res = input_register_device(mimio->idev);
 if (res) {
  dev_err(&udev->dev, "input_register_device failure (%d)\n",
   res);
  mimio_dealloc(mimio);
  return -EIO;
 }
 dev_dbg(&mimio->idev->dev, "input: %s on %s (res = %d).\n",
  input_dev->name, input_dev->phys, res);

 usb_set_intfdata(ifc, mimio);
 mimio->present = 1;




 mimio->in.urb->dev = mimio->udev;
 res = usb_submit_urb(mimio->in.urb, GFP_KERNEL);
 if (res) {
  dev_err(&mimio->idev->dev, "usb_submit_urb failure (%d)\n",
   res);
  mimio_dealloc(mimio);
  return -EIO;
 }
 msleep(1024);

 res = mimio_greet(mimio);
 if (res == 0) {
  dev_dbg(&mimio->idev->dev, "Mimio greeted OK.\n");
  mimio->greeted = 1;
  mimio->rxhandler = mimio_rx_handler;
 } else {
  dev_dbg(&mimio->idev->dev, "Mimio greet Failure (%d)\n", res);
 }

 return 0;
}
