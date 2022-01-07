
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {unsigned int n_subdevices; struct comedi_subdevice* subdevices; } ;
struct comedi_async {int dummy; } ;


 int comedi_buf_read_alloc (struct comedi_async*,unsigned int) ;
 int comedi_buf_read_free (struct comedi_async*,unsigned int) ;

int comedi_mark_buffer_read(void *d, unsigned int subdevice,
       unsigned int num_bytes)
{
 struct comedi_device *dev = (struct comedi_device *)d;
 struct comedi_subdevice *s = dev->subdevices + subdevice;
 struct comedi_async *async;

 if (subdevice >= dev->n_subdevices)
  return -1;
 async = s->async;
 if (async == ((void*)0))
  return -1;

 comedi_buf_read_alloc(async, num_bytes);
 comedi_buf_read_free(async, num_bytes);

 return 0;
}
