
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dlc {struct rfcomm_dev* owner; } ;
struct rfcomm_dev {int id; int list; struct rfcomm_dlc* dlc; } ;


 int BT_DBG (char*,struct rfcomm_dev*,struct rfcomm_dlc*) ;
 int BUG_ON (int) ;
 int THIS_MODULE ;
 int kfree (struct rfcomm_dev*) ;
 int list_empty (int *) ;
 int module_put (int ) ;
 int rfcomm_dlc_lock (struct rfcomm_dlc*) ;
 int rfcomm_dlc_put (struct rfcomm_dlc*) ;
 int rfcomm_dlc_unlock (struct rfcomm_dlc*) ;
 int rfcomm_tty_driver ;
 int tty_unregister_device (int ,int ) ;

__attribute__((used)) static void rfcomm_dev_destruct(struct rfcomm_dev *dev)
{
 struct rfcomm_dlc *dlc = dev->dlc;

 BT_DBG("dev %p dlc %p", dev, dlc);




 BUG_ON(!list_empty(&dev->list));

 rfcomm_dlc_lock(dlc);

 if (dlc->owner == dev)
  dlc->owner = ((void*)0);
 rfcomm_dlc_unlock(dlc);

 rfcomm_dlc_put(dlc);

 tty_unregister_device(rfcomm_tty_driver, dev->id);

 kfree(dev);



 module_put(THIS_MODULE);
}
