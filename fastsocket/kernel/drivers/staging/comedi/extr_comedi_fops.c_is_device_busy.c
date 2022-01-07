
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; scalar_t__ busy; } ;
struct comedi_device {int n_subdevices; struct comedi_subdevice* subdevices; int attached; } ;
struct TYPE_2__ {scalar_t__ mmap_count; } ;



__attribute__((used)) static int is_device_busy(struct comedi_device *dev)
{
 struct comedi_subdevice *s;
 int i;

 if (!dev->attached)
  return 0;

 for (i = 0; i < dev->n_subdevices; i++) {
  s = dev->subdevices + i;
  if (s->busy)
   return 1;
  if (s->async && s->async->mmap_count)
   return 1;
 }

 return 0;
}
