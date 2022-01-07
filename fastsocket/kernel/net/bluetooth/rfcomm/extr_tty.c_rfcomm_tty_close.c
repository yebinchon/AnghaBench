
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int * driver_data; } ;
struct rfcomm_dev {int list; int flags; int dlc; int * tty; int wakeup_task; TYPE_1__* tty_dev; int opened; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ parent; } ;


 int BT_DBG (char*,struct tty_struct*,struct rfcomm_dev*,int ,int ) ;
 int DPM_ORDER_DEV_LAST ;
 int RFCOMM_TTY_ATTACHED ;
 int RFCOMM_TTY_RELEASED ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int device_move (TYPE_1__*,int *,int ) ;
 int list_del_init (int *) ;
 int rfcomm_dev_lock ;
 int rfcomm_dev_put (struct rfcomm_dev*) ;
 int rfcomm_dlc_close (int ,int ) ;
 int rfcomm_dlc_lock (int ) ;
 int rfcomm_dlc_unlock (int ) ;
 int tasklet_kill (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void rfcomm_tty_close(struct tty_struct *tty, struct file *filp)
{
 struct rfcomm_dev *dev = (struct rfcomm_dev *) tty->driver_data;
 if (!dev)
  return;

 BT_DBG("tty %p dev %p dlc %p opened %d", tty, dev, dev->dlc,
      atomic_read(&dev->opened));

 if (atomic_dec_and_test(&dev->opened)) {
  if (dev->tty_dev->parent)
   device_move(dev->tty_dev, ((void*)0), DPM_ORDER_DEV_LAST);


  rfcomm_dlc_close(dev->dlc, 0);

  clear_bit(RFCOMM_TTY_ATTACHED, &dev->flags);
  tasklet_kill(&dev->wakeup_task);

  rfcomm_dlc_lock(dev->dlc);
  tty->driver_data = ((void*)0);
  dev->tty = ((void*)0);
  rfcomm_dlc_unlock(dev->dlc);

  if (test_bit(RFCOMM_TTY_RELEASED, &dev->flags)) {
   write_lock_bh(&rfcomm_dev_lock);
   list_del_init(&dev->list);
   write_unlock_bh(&rfcomm_dev_lock);

   rfcomm_dev_put(dev);
  }
 }

 rfcomm_dev_put(dev);
}
