
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int index; struct rfcomm_dev* driver_data; } ;
struct rfcomm_dlc {scalar_t__ state; } ;
struct rfcomm_dev {int err; struct rfcomm_dlc* dlc; int tty_dev; int wait; int channel; int dst; int src; int flags; struct tty_struct* tty; int opened; } ;
struct file {int dummy; } ;


 scalar_t__ BT_CLOSED ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,...) ;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int DPM_ORDER_DEV_AFTER_PARENT ;
 int EINTR ;
 int ENODEV ;
 int RFCOMM_TTY_ATTACHED ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int *,int *) ;
 int atomic_inc_return (int *) ;
 int atomic_read (int *) ;
 int batostr (int *) ;
 int current ;
 int device_move (int ,int ,int ) ;
 int remove_wait_queue (int *,int *) ;
 struct rfcomm_dev* rfcomm_dev_get (int) ;
 int rfcomm_dlc_lock (struct rfcomm_dlc*) ;
 int rfcomm_dlc_open (struct rfcomm_dlc*,int *,int *,int ) ;
 int rfcomm_dlc_unlock (struct rfcomm_dlc*) ;
 int rfcomm_dlc_unthrottle (struct rfcomm_dlc*) ;
 int rfcomm_get_device (struct rfcomm_dev*) ;
 int rfcomm_tty_copy_pending (struct rfcomm_dev*) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int wait ;

__attribute__((used)) static int rfcomm_tty_open(struct tty_struct *tty, struct file *filp)
{
 DECLARE_WAITQUEUE(wait, current);
 struct rfcomm_dev *dev;
 struct rfcomm_dlc *dlc;
 int err, id;

 id = tty->index;

 BT_DBG("tty %p id %d", tty, id);





 dev = rfcomm_dev_get(id);
 if (!dev)
  return -ENODEV;

 BT_DBG("dev %p dst %s channel %d opened %d", dev, batostr(&dev->dst),
    dev->channel, atomic_read(&dev->opened));

 if (atomic_inc_return(&dev->opened) > 1)
  return 0;

 dlc = dev->dlc;



 rfcomm_dlc_lock(dlc);
 tty->driver_data = dev;
 dev->tty = tty;
 rfcomm_dlc_unlock(dlc);
 set_bit(RFCOMM_TTY_ATTACHED, &dev->flags);

 err = rfcomm_dlc_open(dlc, &dev->src, &dev->dst, dev->channel);
 if (err < 0)
  return err;


 add_wait_queue(&dev->wait, &wait);
 while (1) {
  set_current_state(TASK_INTERRUPTIBLE);

  if (dlc->state == BT_CLOSED) {
   err = -dev->err;
   break;
  }

  if (dlc->state == BT_CONNECTED)
   break;

  if (signal_pending(current)) {
   err = -EINTR;
   break;
  }

  schedule();
 }
 set_current_state(TASK_RUNNING);
 remove_wait_queue(&dev->wait, &wait);

 if (err == 0)
  device_move(dev->tty_dev, rfcomm_get_device(dev),
       DPM_ORDER_DEV_AFTER_PARENT);

 rfcomm_tty_copy_pending(dev);

 rfcomm_dlc_unthrottle(dev->dlc);

 return err;
}
