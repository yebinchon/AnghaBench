
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {size_t minor; int * class_dev; } ;
struct comedi_device_file_info {int dummy; } ;


 int BUG_ON (int) ;
 size_t COMEDI_FIRST_SUBDEVICE_MINOR ;
 int COMEDI_MAJOR ;
 size_t COMEDI_NUM_MINORS ;
 int MKDEV (int ,size_t) ;
 int comedi_class ;
 struct comedi_device_file_info** comedi_file_info_table ;
 int comedi_file_info_table_lock ;
 int device_destroy (int ,int ) ;
 int kfree (struct comedi_device_file_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void comedi_free_subdevice_minor(struct comedi_subdevice *s)
{
 unsigned long flags;
 struct comedi_device_file_info *info;

 if (s == ((void*)0))
  return;
 if (s->minor < 0)
  return;

 BUG_ON(s->minor >= COMEDI_NUM_MINORS);
 BUG_ON(s->minor < COMEDI_FIRST_SUBDEVICE_MINOR);

 spin_lock_irqsave(&comedi_file_info_table_lock, flags);
 info = comedi_file_info_table[s->minor];
 comedi_file_info_table[s->minor] = ((void*)0);
 spin_unlock_irqrestore(&comedi_file_info_table_lock, flags);

 if (s->class_dev) {
  device_destroy(comedi_class, MKDEV(COMEDI_MAJOR, s->minor));
  s->class_dev = ((void*)0);
 }
 kfree(info);
}
