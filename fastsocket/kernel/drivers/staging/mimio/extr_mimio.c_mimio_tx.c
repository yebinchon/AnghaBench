
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* urb; } ;
struct mimio {int txflags; TYPE_2__ out; int waitq; TYPE_1__* idev; int txlock; int udev; } ;
struct TYPE_7__ {int transfer_buffer_length; int transfer_buffer; int dev; } ;
struct TYPE_5__ {int dev; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EINVAL ;
 int GFP_ATOMIC ;
 int HZ ;
 int MIMIO_TXDONE ;
 int MIMIO_TXWAIT ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,int) ;
 int isvalidtxsize (int) ;
 int memcpy (int ,char const*,int) ;
 int remove_wait_queue (int *,int *) ;
 int rmb () ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_submit_urb (TYPE_3__*,int ) ;
 int usb_unlink_urb (TYPE_3__*) ;
 int wait ;

__attribute__((used)) static int mimio_tx(struct mimio *mimio, const char *buf, int nbytes)
{
 int rslt;
 int timeout;
 unsigned long flags;
 DECLARE_WAITQUEUE(wait, current);

 if (!(isvalidtxsize(nbytes))) {
  dev_err(&mimio->idev->dev, "invalid arg: nbytes: %d.\n",
   nbytes);
  return -EINVAL;
 }




 mimio->out.urb->dev = mimio->udev;
 mimio->out.urb->transfer_buffer_length = nbytes;
 memcpy(mimio->out.urb->transfer_buffer, buf, nbytes);




 spin_lock_irqsave(&mimio->txlock, flags);
 mimio->txflags = MIMIO_TXWAIT;
 rslt = usb_submit_urb(mimio->out.urb, GFP_ATOMIC);
 spin_unlock_irqrestore(&mimio->txlock, flags);
 dev_dbg(&mimio->idev->dev, "rslt: %d.\n", rslt);

 if (rslt) {
  dev_err(&mimio->idev->dev, "usb_submit_urb failure: %d.\n",
   rslt);
  return rslt;
 }





 timeout = HZ;
 set_current_state(TASK_INTERRUPTIBLE);
 add_wait_queue(&mimio->waitq, &wait);

 while (timeout && ((mimio->txflags & MIMIO_TXDONE) == 0)) {
  timeout = schedule_timeout(timeout);
  rmb();
 }

 if ((mimio->txflags & MIMIO_TXDONE) == 0)
  dev_dbg(&mimio->idev->dev, "tx timed out.\n");





 set_current_state(TASK_RUNNING);
 remove_wait_queue(&mimio->waitq, &wait);
 usb_unlink_urb(mimio->out.urb);

 return rslt;
}
