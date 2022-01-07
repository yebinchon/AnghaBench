
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atm_dev {int number; char* type; int proc_name; int proc_entry; TYPE_1__* ops; } ;
struct TYPE_2__ {int proc_read; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int atm_proc_root ;
 int kfree (int ) ;
 int kmalloc (scalar_t__,int ) ;
 int proc_atm_dev_ops ;
 int proc_create_data (int ,int ,int ,int *,struct atm_dev*) ;
 int sprintf (int ,char*,char*,int) ;
 scalar_t__ strlen (char*) ;

int atm_proc_dev_register(struct atm_dev *dev)
{
 int digits,num;
 int error;


 if (!dev->ops->proc_read)
  return 0;

 error = -ENOMEM;
 digits = 0;
 for (num = dev->number; num; num /= 10) digits++;
 if (!digits) digits++;

 dev->proc_name = kmalloc(strlen(dev->type) + digits + 2, GFP_KERNEL);
 if (!dev->proc_name)
  goto err_out;
 sprintf(dev->proc_name,"%s:%d",dev->type, dev->number);

 dev->proc_entry = proc_create_data(dev->proc_name, 0, atm_proc_root,
        &proc_atm_dev_ops, dev);
 if (!dev->proc_entry)
  goto err_free_name;
 return 0;
err_free_name:
 kfree(dev->proc_name);
err_out:
 return error;
}
