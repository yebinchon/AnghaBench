
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device_file_info {int minor; scalar_t__ class_dev; struct comedi_device_file_info* device; } ;
struct comedi_device {int minor; scalar_t__ class_dev; struct comedi_device* device; } ;


 int BUG_ON (int) ;
 int COMEDI_MAJOR ;
 unsigned int COMEDI_NUM_BOARD_MINORS ;
 int MKDEV (int ,int ) ;
 int comedi_class ;
 int comedi_device_cleanup (struct comedi_device_file_info*) ;
 struct comedi_device_file_info** comedi_file_info_table ;
 int comedi_file_info_table_lock ;
 int device_destroy (int ,int ) ;
 int kfree (struct comedi_device_file_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void comedi_free_board_minor(unsigned minor)
{
 unsigned long flags;
 struct comedi_device_file_info *info;

 BUG_ON(minor >= COMEDI_NUM_BOARD_MINORS);
 spin_lock_irqsave(&comedi_file_info_table_lock, flags);
 info = comedi_file_info_table[minor];
 comedi_file_info_table[minor] = ((void*)0);
 spin_unlock_irqrestore(&comedi_file_info_table_lock, flags);

 if (info) {
  struct comedi_device *dev = info->device;
  if (dev) {
   if (dev->class_dev) {
    device_destroy(comedi_class,
            MKDEV(COMEDI_MAJOR, dev->minor));
   }
   comedi_device_cleanup(dev);
   kfree(dev);
  }
  kfree(info);
 }
}
