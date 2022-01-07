
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_2__* range_table; TYPE_1__** range_table_list; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_4__ {int length; } ;
struct TYPE_3__ {int length; } ;



int comedi_get_n_ranges(void *d, unsigned int subdevice, unsigned int chan)
{
 struct comedi_device *dev = (struct comedi_device *)d;
 struct comedi_subdevice *s = dev->subdevices + subdevice;
 int ret;

 if (s->range_table_list) {
  ret = s->range_table_list[chan]->length;
 } else {
  ret = s->range_table->length;
 }

 return ret;
}
