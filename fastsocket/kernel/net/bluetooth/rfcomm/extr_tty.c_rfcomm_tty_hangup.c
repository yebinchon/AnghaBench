
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ driver_data; } ;
struct rfcomm_dev {int id; int flags; } ;


 int BT_DBG (char*,struct tty_struct*,struct rfcomm_dev*) ;
 int RFCOMM_RELEASE_ONHUP ;
 int rfcomm_dev_del (struct rfcomm_dev*) ;
 int * rfcomm_dev_get (int ) ;
 int rfcomm_dev_put (struct rfcomm_dev*) ;
 int rfcomm_tty_flush_buffer (struct tty_struct*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rfcomm_tty_hangup(struct tty_struct *tty)
{
 struct rfcomm_dev *dev = (struct rfcomm_dev *) tty->driver_data;

 BT_DBG("tty %p dev %p", tty, dev);

 if (!dev)
  return;

 rfcomm_tty_flush_buffer(tty);

 if (test_bit(RFCOMM_RELEASE_ONHUP, &dev->flags)) {
  if (rfcomm_dev_get(dev->id) == ((void*)0))
   return;
  rfcomm_dev_del(dev);
  rfcomm_dev_put(dev);
 }
}
