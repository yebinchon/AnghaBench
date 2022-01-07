
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int attached; } ;


 int __comedi_device_detach (struct comedi_device*) ;

void comedi_device_detach(struct comedi_device *dev)
{
 if (!dev->attached)
  return;
 __comedi_device_detach(dev);
}
