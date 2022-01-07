
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atm_dev {int proc_name; TYPE_1__* ops; } ;
struct TYPE_2__ {int proc_read; } ;


 int atm_proc_root ;
 int kfree (int ) ;
 int remove_proc_entry (int ,int ) ;

void atm_proc_dev_deregister(struct atm_dev *dev)
{
 if (!dev->ops->proc_read)
  return;

 remove_proc_entry(dev->proc_name, atm_proc_root);
 kfree(dev->proc_name);
}
