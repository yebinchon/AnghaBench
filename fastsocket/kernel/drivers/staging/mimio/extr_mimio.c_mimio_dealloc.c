
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dma; scalar_t__ buf; int urb; } ;
struct TYPE_5__ {int dma; scalar_t__ buf; int urb; } ;
struct mimio {TYPE_3__* idev; TYPE_2__ out; int udev; TYPE_1__ in; } ;
struct TYPE_7__ {int dev; scalar_t__ grab; } ;


 int MIMIO_MAXPAYLOAD ;
 int dev_dbg (int *,char*) ;
 int input_close_device (scalar_t__) ;
 int input_free_device (TYPE_3__*) ;
 int input_unregister_device (TYPE_3__*) ;
 int kfree (struct mimio*) ;
 int usb_buffer_free (int ,int ,scalar_t__,int ) ;
 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void mimio_dealloc(struct mimio *mimio)
{
 if (mimio == ((void*)0))
  return;

 usb_kill_urb(mimio->in.urb);

 usb_kill_urb(mimio->out.urb);

 if (mimio->idev) {
  input_unregister_device(mimio->idev);
  if (mimio->idev->grab)
   input_close_device(mimio->idev->grab);
  else
   dev_dbg(&mimio->idev->dev, "mimio->idev->grab == NULL"
    " -- didn't call input_close_device\n");
 }

 usb_free_urb(mimio->in.urb);

 usb_free_urb(mimio->out.urb);

 if (mimio->in.buf) {
  usb_buffer_free(mimio->udev, MIMIO_MAXPAYLOAD, mimio->in.buf,
    mimio->in.dma);
 }

 if (mimio->out.buf)
  usb_buffer_free(mimio->udev, MIMIO_MAXPAYLOAD, mimio->out.buf,
    mimio->out.dma);

 if (mimio->idev)
  input_free_device(mimio->idev);

 kfree(mimio);
}
