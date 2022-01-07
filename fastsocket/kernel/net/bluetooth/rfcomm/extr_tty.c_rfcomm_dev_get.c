
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dev {int flags; } ;


 int RFCOMM_TTY_RELEASED ;
 struct rfcomm_dev* __rfcomm_dev_get (int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int rfcomm_dev_hold (struct rfcomm_dev*) ;
 int rfcomm_dev_lock ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline struct rfcomm_dev *rfcomm_dev_get(int id)
{
 struct rfcomm_dev *dev;

 read_lock(&rfcomm_dev_lock);

 dev = __rfcomm_dev_get(id);

 if (dev) {
  if (test_bit(RFCOMM_TTY_RELEASED, &dev->flags))
   dev = ((void*)0);
  else
   rfcomm_dev_hold(dev);
 }

 read_unlock(&rfcomm_dev_lock);

 return dev;
}
