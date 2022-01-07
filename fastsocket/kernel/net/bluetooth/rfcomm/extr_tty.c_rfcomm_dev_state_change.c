
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dlc {scalar_t__ state; struct rfcomm_dev* owner; } ;
struct rfcomm_dev {int err; int tty; int id; int flags; int wait; } ;


 scalar_t__ BT_CLOSED ;
 int BT_DBG (char*,struct rfcomm_dlc*,struct rfcomm_dev*,int) ;
 int RFCOMM_RELEASE_ONHUP ;
 int rfcomm_dev_del (struct rfcomm_dev*) ;
 int * rfcomm_dev_get (int ) ;
 int rfcomm_dev_put (struct rfcomm_dev*) ;
 int rfcomm_dlc_lock (struct rfcomm_dlc*) ;
 int rfcomm_dlc_unlock (struct rfcomm_dlc*) ;
 scalar_t__ test_bit (int ,int *) ;
 int tty_hangup (int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void rfcomm_dev_state_change(struct rfcomm_dlc *dlc, int err)
{
 struct rfcomm_dev *dev = dlc->owner;
 if (!dev)
  return;

 BT_DBG("dlc %p dev %p err %d", dlc, dev, err);

 dev->err = err;
 wake_up_interruptible(&dev->wait);

 if (dlc->state == BT_CLOSED) {
  if (!dev->tty) {
   if (test_bit(RFCOMM_RELEASE_ONHUP, &dev->flags)) {







    rfcomm_dlc_unlock(dlc);
    if (rfcomm_dev_get(dev->id) == ((void*)0)) {
     rfcomm_dlc_lock(dlc);
     return;
    }

    rfcomm_dev_del(dev);
    rfcomm_dev_put(dev);
    rfcomm_dlc_lock(dlc);
   }
  } else
   tty_hangup(dev->tty);
 }
}
