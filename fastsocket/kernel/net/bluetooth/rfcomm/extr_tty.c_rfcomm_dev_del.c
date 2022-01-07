
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dev {int list; int opened; int flags; } ;


 int BT_DBG (char*,struct rfcomm_dev*) ;
 int BUG_ON (int ) ;
 int RFCOMM_TTY_RELEASED ;
 scalar_t__ atomic_read (int *) ;
 int list_del_init (int *) ;
 int rfcomm_dev_lock ;
 int rfcomm_dev_put (struct rfcomm_dev*) ;
 int test_and_set_bit (int ,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void rfcomm_dev_del(struct rfcomm_dev *dev)
{
 BT_DBG("dev %p", dev);

 BUG_ON(test_and_set_bit(RFCOMM_TTY_RELEASED, &dev->flags));

 if (atomic_read(&dev->opened) > 0)
  return;

 write_lock_bh(&rfcomm_dev_lock);
 list_del_init(&dev->list);
 write_unlock_bh(&rfcomm_dev_lock);

 rfcomm_dev_put(dev);
}
