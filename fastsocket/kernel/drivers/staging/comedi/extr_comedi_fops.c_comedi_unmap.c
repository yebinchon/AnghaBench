
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct comedi_async* vm_private_data; } ;
struct comedi_device {int mutex; } ;
struct comedi_async {int mmap_count; TYPE_1__* subdevice; } ;
struct TYPE_2__ {struct comedi_device* device; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void comedi_unmap(struct vm_area_struct *area)
{
 struct comedi_async *async;
 struct comedi_device *dev;

 async = area->vm_private_data;
 dev = async->subdevice->device;

 mutex_lock(&dev->mutex);
 async->mmap_count--;
 mutex_unlock(&dev->mutex);
}
