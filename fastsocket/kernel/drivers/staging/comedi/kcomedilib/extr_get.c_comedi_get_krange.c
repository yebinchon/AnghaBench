
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_lrange* range_table; struct comedi_lrange** range_table_list; } ;
struct comedi_lrange {unsigned int length; scalar_t__ range; } ;
struct comedi_krange {int dummy; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;


 int EINVAL ;
 int memcpy (struct comedi_krange*,scalar_t__,int) ;

int comedi_get_krange(void *d, unsigned int subdevice, unsigned int chan,
        unsigned int range, struct comedi_krange *krange)
{
 struct comedi_device *dev = (struct comedi_device *)d;
 struct comedi_subdevice *s = dev->subdevices + subdevice;
 const struct comedi_lrange *lr;

 if (s->range_table_list) {
  lr = s->range_table_list[chan];
 } else {
  lr = s->range_table;
 }
 if (range >= lr->length)
  return -EINVAL;

 memcpy(krange, lr->range + range, sizeof(struct comedi_krange));

 return 0;
}
