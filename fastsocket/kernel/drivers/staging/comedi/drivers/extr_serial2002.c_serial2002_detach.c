
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {scalar_t__ range_table_list; scalar_t__ maxdata_list; } ;
struct comedi_device {struct comedi_subdevice* subdevices; int minor; } ;


 int kfree (scalar_t__) ;
 int printk (char*,int ) ;

__attribute__((used)) static int serial2002_detach(struct comedi_device *dev)
{
 struct comedi_subdevice *s;
 int i;

 printk("comedi%d: serial2002: remove\n", dev->minor);
 for (i = 0; i < 4; i++) {
  s = &dev->subdevices[i];
  if (s->maxdata_list) {
   kfree(s->maxdata_list);
  }
  if (s->range_table_list) {
   kfree(s->range_table_list);
  }
 }
 return 0;
}
