
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int mutex; } ;


 int comedi_device_detach (struct comedi_device*) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void comedi_device_cleanup(struct comedi_device *dev)
{
 if (dev == ((void*)0))
  return;
 mutex_lock(&dev->mutex);
 comedi_device_detach(dev);
 mutex_unlock(&dev->mutex);
 mutex_destroy(&dev->mutex);
}
