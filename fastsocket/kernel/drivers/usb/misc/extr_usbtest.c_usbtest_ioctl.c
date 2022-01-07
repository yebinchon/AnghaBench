
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct usbtest_param {scalar_t__ iterations; int test_num; scalar_t__ length; scalar_t__ vary; scalar_t__ sglen; struct timeval duration; } ;
struct usbtest_dev {int lock; int iso_in; int in_iso_pipe; int iso_out; int out_iso_pipe; TYPE_3__* info; int in_pipe; int out_pipe; } ;
struct usb_sg_request {int dummy; } ;
struct usb_interface {int dev; TYPE_2__* altsetting; int is_active; } ;
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;
struct scatterlist {int dummy; } ;
struct TYPE_6__ {scalar_t__ alt; int ctrl_out; } ;
struct TYPE_4__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int EHOSTUNREACH ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ERESTARTSYS ;
 int ERROR (struct usbtest_dev*,char*,unsigned int) ;
 unsigned int USBTEST_REQUEST ;
 struct scatterlist* alloc_sglist (scalar_t__,scalar_t__,scalar_t__) ;
 int ch9_postconfig (struct usbtest_dev*) ;
 int ctrl_out (struct usbtest_dev*,unsigned int,scalar_t__,scalar_t__) ;
 int dev_err (int *,char*,int,...) ;
 int dev_info (int *,char*,...) ;
 int do_gettimeofday (struct timeval*) ;
 int free_sglist (struct scatterlist*,scalar_t__) ;
 int halt_simple (struct usbtest_dev*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int perform_sglist (struct usbtest_dev*,scalar_t__,int ,struct usb_sg_request*,struct scatterlist*,scalar_t__) ;
 int realworld ;
 int set_altsetting (struct usbtest_dev*,scalar_t__) ;
 struct urb* simple_alloc_urb (struct usb_device*,int ,scalar_t__) ;
 int simple_free_urb (struct urb*) ;
 int simple_io (struct usbtest_dev*,struct urb*,scalar_t__,scalar_t__,int ,char*) ;
 int test_ctrl_queue (struct usbtest_dev*,struct usbtest_param*) ;
 int test_iso_queue (struct usbtest_dev*,struct usbtest_param*,int ,int ) ;
 struct usb_device* testdev_to_usbdev (struct usbtest_dev*) ;
 int unlink_simple (struct usbtest_dev*,int ,scalar_t__) ;
 struct usbtest_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int
usbtest_ioctl (struct usb_interface *intf, unsigned int code, void *buf)
{
 struct usbtest_dev *dev = usb_get_intfdata (intf);
 struct usb_device *udev = testdev_to_usbdev (dev);
 struct usbtest_param *param = buf;
 int retval = -EOPNOTSUPP;
 struct urb *urb;
 struct scatterlist *sg;
 struct usb_sg_request req;
 struct timeval start;
 unsigned i;



 if (code != USBTEST_REQUEST)
  return -EOPNOTSUPP;

 if (param->iterations <= 0)
  return -EINVAL;

 if (mutex_lock_interruptible(&dev->lock))
  return -ERESTARTSYS;


 if (!intf->is_active) {
  mutex_unlock(&dev->lock);
  return -EHOSTUNREACH;
 }





 if (dev->info->alt >= 0) {
  int res;

  if (intf->altsetting->desc.bInterfaceNumber) {
   mutex_unlock(&dev->lock);
   return -ENODEV;
  }
  res = set_altsetting (dev, dev->info->alt);
  if (res) {
   dev_err (&intf->dev,
     "set altsetting to %d failed, %d\n",
     dev->info->alt, res);
   mutex_unlock(&dev->lock);
   return res;
  }
 }
 do_gettimeofday (&start);
 switch (param->test_num) {

 case 0:
  dev_info(&intf->dev, "TEST 0:  NOP\n");
  retval = 0;
  break;


 case 1:
  if (dev->out_pipe == 0)
   break;
  dev_info(&intf->dev,
    "TEST 1:  write %d bytes %u times\n",
    param->length, param->iterations);
  urb = simple_alloc_urb (udev, dev->out_pipe, param->length);
  if (!urb) {
   retval = -ENOMEM;
   break;
  }

  retval = simple_io(dev, urb, param->iterations, 0, 0, "test1");
  simple_free_urb (urb);
  break;
 case 2:
  if (dev->in_pipe == 0)
   break;
  dev_info(&intf->dev,
    "TEST 2:  read %d bytes %u times\n",
    param->length, param->iterations);
  urb = simple_alloc_urb (udev, dev->in_pipe, param->length);
  if (!urb) {
   retval = -ENOMEM;
   break;
  }

  retval = simple_io(dev, urb, param->iterations, 0, 0, "test2");
  simple_free_urb (urb);
  break;
 case 3:
  if (dev->out_pipe == 0 || param->vary == 0)
   break;
  dev_info(&intf->dev,
    "TEST 3:  write/%d 0..%d bytes %u times\n",
    param->vary, param->length, param->iterations);
  urb = simple_alloc_urb (udev, dev->out_pipe, param->length);
  if (!urb) {
   retval = -ENOMEM;
   break;
  }

  retval = simple_io(dev, urb, param->iterations, param->vary,
     0, "test3");
  simple_free_urb (urb);
  break;
 case 4:
  if (dev->in_pipe == 0 || param->vary == 0)
   break;
  dev_info(&intf->dev,
    "TEST 4:  read/%d 0..%d bytes %u times\n",
    param->vary, param->length, param->iterations);
  urb = simple_alloc_urb (udev, dev->in_pipe, param->length);
  if (!urb) {
   retval = -ENOMEM;
   break;
  }

  retval = simple_io(dev, urb, param->iterations, param->vary,
     0, "test4");
  simple_free_urb (urb);
  break;


 case 5:
  if (dev->out_pipe == 0 || param->sglen == 0)
   break;
  dev_info(&intf->dev,
   "TEST 5:  write %d sglists %d entries of %d bytes\n",
    param->iterations,
    param->sglen, param->length);
  sg = alloc_sglist (param->sglen, param->length, 0);
  if (!sg) {
   retval = -ENOMEM;
   break;
  }

  retval = perform_sglist(dev, param->iterations, dev->out_pipe,
    &req, sg, param->sglen);
  free_sglist (sg, param->sglen);
  break;

 case 6:
  if (dev->in_pipe == 0 || param->sglen == 0)
   break;
  dev_info(&intf->dev,
   "TEST 6:  read %d sglists %d entries of %d bytes\n",
    param->iterations,
    param->sglen, param->length);
  sg = alloc_sglist (param->sglen, param->length, 0);
  if (!sg) {
   retval = -ENOMEM;
   break;
  }

  retval = perform_sglist(dev, param->iterations, dev->in_pipe,
    &req, sg, param->sglen);
  free_sglist (sg, param->sglen);
  break;
 case 7:
  if (dev->out_pipe == 0 || param->sglen == 0 || param->vary == 0)
   break;
  dev_info(&intf->dev,
   "TEST 7:  write/%d %d sglists %d entries 0..%d bytes\n",
    param->vary, param->iterations,
    param->sglen, param->length);
  sg = alloc_sglist (param->sglen, param->length, param->vary);
  if (!sg) {
   retval = -ENOMEM;
   break;
  }

  retval = perform_sglist(dev, param->iterations, dev->out_pipe,
    &req, sg, param->sglen);
  free_sglist (sg, param->sglen);
  break;
 case 8:
  if (dev->in_pipe == 0 || param->sglen == 0 || param->vary == 0)
   break;
  dev_info(&intf->dev,
   "TEST 8:  read/%d %d sglists %d entries 0..%d bytes\n",
    param->vary, param->iterations,
    param->sglen, param->length);
  sg = alloc_sglist (param->sglen, param->length, param->vary);
  if (!sg) {
   retval = -ENOMEM;
   break;
  }

  retval = perform_sglist(dev, param->iterations, dev->in_pipe,
    &req, sg, param->sglen);
  free_sglist (sg, param->sglen);
  break;


 case 9:
  retval = 0;
  dev_info(&intf->dev,
   "TEST 9:  ch9 (subset) control tests, %d times\n",
    param->iterations);
  for (i = param->iterations; retval == 0 && i--; )
   retval = ch9_postconfig (dev);
  if (retval)
   dev_err(&intf->dev, "ch9 subset failed, "
     "iterations left %d\n", i);
  break;


 case 10:
  if (param->sglen == 0)
   break;
  retval = 0;
  dev_info(&intf->dev,
    "TEST 10:  queue %d control calls, %d times\n",
    param->sglen,
    param->iterations);
  retval = test_ctrl_queue (dev, param);
  break;


 case 11:
  if (dev->in_pipe == 0 || !param->length)
   break;
  retval = 0;
  dev_info(&intf->dev, "TEST 11:  unlink %d reads of %d\n",
    param->iterations, param->length);
  for (i = param->iterations; retval == 0 && i--; )
   retval = unlink_simple (dev, dev->in_pipe,
      param->length);
  if (retval)
   dev_err(&intf->dev, "unlink reads failed %d, "
    "iterations left %d\n", retval, i);
  break;
 case 12:
  if (dev->out_pipe == 0 || !param->length)
   break;
  retval = 0;
  dev_info(&intf->dev, "TEST 12:  unlink %d writes of %d\n",
    param->iterations, param->length);
  for (i = param->iterations; retval == 0 && i--; )
   retval = unlink_simple (dev, dev->out_pipe,
      param->length);
  if (retval)
   dev_err(&intf->dev, "unlink writes failed %d, "
    "iterations left %d\n", retval, i);
  break;


 case 13:
  if (dev->out_pipe == 0 && dev->in_pipe == 0)
   break;
  retval = 0;
  dev_info(&intf->dev, "TEST 13:  set/clear %d halts\n",
    param->iterations);
  for (i = param->iterations; retval == 0 && i--; )
   retval = halt_simple (dev);

  if (retval)
   ERROR(dev, "halts failed, iterations left %d\n", i);
  break;


 case 14:
  if (!dev->info->ctrl_out)
   break;
  dev_info(&intf->dev, "TEST 14:  %d ep0out, %d..%d vary %d\n",
    param->iterations,
    realworld ? 1 : 0, param->length,
    param->vary);
  retval = ctrl_out(dev, param->iterations,
    param->length, param->vary);
  break;


 case 15:
  if (dev->out_iso_pipe == 0 || param->sglen == 0)
   break;
  dev_info(&intf->dev,
   "TEST 15:  write %d iso, %d entries of %d bytes\n",
    param->iterations,
    param->sglen, param->length);

  retval = test_iso_queue (dev, param,
    dev->out_iso_pipe, dev->iso_out);
  break;


 case 16:
  if (dev->in_iso_pipe == 0 || param->sglen == 0)
   break;
  dev_info(&intf->dev,
   "TEST 16:  read %d iso, %d entries of %d bytes\n",
    param->iterations,
    param->sglen, param->length);

  retval = test_iso_queue (dev, param,
    dev->in_iso_pipe, dev->iso_in);
  break;





 }
 do_gettimeofday (&param->duration);
 param->duration.tv_sec -= start.tv_sec;
 param->duration.tv_usec -= start.tv_usec;
 if (param->duration.tv_usec < 0) {
  param->duration.tv_usec += 1000 * 1000;
  param->duration.tv_sec -= 1;
 }
 mutex_unlock(&dev->lock);
 return retval;
}
