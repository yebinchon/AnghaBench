
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ number_of_packets; scalar_t__ interval; int complete; scalar_t__ hcpriv; int dev; } ;
struct TYPE_2__ {struct urb* urb; } ;
struct mimio {int greeted; TYPE_1__ in; int udev; scalar_t__ present; int open; } ;
struct input_dev {int dev; } ;


 int EIO ;
 int ENODEV ;
 int GFP_KERNEL ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 int disconnect_sem ;
 int down (int *) ;
 struct mimio* input_get_drvdata (struct input_dev*) ;
 int mimio_greet (struct mimio*) ;
 int up (int *) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int mimio_open(struct input_dev *idev)
{
 int rslt;
 struct mimio *mimio;

 rslt = 0;
 down(&disconnect_sem);
 mimio = input_get_drvdata(idev);
 dev_dbg(&idev->dev, "mimio_open\n");

 if (mimio == ((void*)0)) {
  dev_err(&idev->dev, "null mimio.\n");
  rslt = -ENODEV;
  goto exit;
 }

 if (mimio->open++)
  goto exit;

 if (mimio->present && !mimio->greeted) {
  struct urb *urb = mimio->in.urb;
  mimio->in.urb->dev = mimio->udev;
  rslt = usb_submit_urb(mimio->in.urb, GFP_KERNEL);
  if (rslt) {
   dev_err(&idev->dev, "usb_submit_urb failure "
    "(res = %d: %s). Not greeting.\n",
    rslt,
    (!urb ? "urb is NULL" :
     (urb->hcpriv ? "urb->hcpriv is non-NULL" :
      (!urb->complete ? "urb is not complete" :
       (urb->number_of_packets <= 0 ? "urb has no packets" :
        (urb->interval <= 0 ? "urb interval too small" :
         "urb interval too large or some other error"))))));
   rslt = -EIO;
   goto exit;
  }
  rslt = mimio_greet(mimio);
  if (rslt == 0) {
   dev_dbg(&idev->dev, "Mimio greeted OK.\n");
   mimio->greeted = 1;
  } else {
   dev_dbg(&idev->dev, "Mimio greet Failure (%d)\n",
    rslt);
  }
 }

exit:
 up(&disconnect_sem);
 return rslt;
}
