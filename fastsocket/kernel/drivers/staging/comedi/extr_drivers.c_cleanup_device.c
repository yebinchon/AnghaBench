
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_subdevice* async; } ;
struct comedi_device {int n_subdevices; int * close; int * open; int * write_subdev; int * read_subdev; scalar_t__ irq; scalar_t__ iobase; int * board_ptr; int * board_name; scalar_t__ driver; struct comedi_subdevice* private; struct comedi_subdevice* subdevices; } ;


 int comedi_buf_alloc (struct comedi_device*,struct comedi_subdevice*,int ) ;
 int comedi_free_subdevice_minor (struct comedi_subdevice*) ;
 int comedi_set_hw_dev (struct comedi_device*,int *) ;
 int kfree (struct comedi_subdevice*) ;

__attribute__((used)) static void cleanup_device(struct comedi_device *dev)
{
 int i;
 struct comedi_subdevice *s;

 if (dev->subdevices) {
  for (i = 0; i < dev->n_subdevices; i++) {
   s = dev->subdevices + i;
   comedi_free_subdevice_minor(s);
   if (s->async) {
    comedi_buf_alloc(dev, s, 0);
    kfree(s->async);
   }
  }
  kfree(dev->subdevices);
  dev->subdevices = ((void*)0);
  dev->n_subdevices = 0;
 }
 kfree(dev->private);
 dev->private = ((void*)0);
 dev->driver = 0;
 dev->board_name = ((void*)0);
 dev->board_ptr = ((void*)0);
 dev->iobase = 0;
 dev->irq = 0;
 dev->read_subdev = ((void*)0);
 dev->write_subdev = ((void*)0);
 dev->open = ((void*)0);
 dev->close = ((void*)0);
 comedi_set_hw_dev(dev, ((void*)0));
}
