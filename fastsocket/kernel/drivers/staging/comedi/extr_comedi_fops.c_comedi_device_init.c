
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int minor; int mutex; int spinlock; } ;


 int memset (struct comedi_device*,int ,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void comedi_device_init(struct comedi_device *dev)
{
 memset(dev, 0, sizeof(struct comedi_device));
 spin_lock_init(&dev->spinlock);
 mutex_init(&dev->mutex);
 dev->minor = -1;
}
