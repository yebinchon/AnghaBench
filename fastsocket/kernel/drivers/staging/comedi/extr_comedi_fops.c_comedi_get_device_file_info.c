
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device_file_info {int dummy; } ;


 int BUG_ON (int) ;
 unsigned int COMEDI_NUM_MINORS ;
 struct comedi_device_file_info** comedi_file_info_table ;
 int comedi_file_info_table_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct comedi_device_file_info *comedi_get_device_file_info(unsigned minor)
{
 unsigned long flags;
 struct comedi_device_file_info *info;

 BUG_ON(minor >= COMEDI_NUM_MINORS);
 spin_lock_irqsave(&comedi_file_info_table_lock, flags);
 info = comedi_file_info_table[minor];
 spin_unlock_irqrestore(&comedi_file_info_table_lock, flags);
 return info;
}
