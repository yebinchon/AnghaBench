
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct TYPE_2__ {int pid; } ;


 TYPE_1__* current ;
 int name ;
 int pm_qos_remove_requirement (int,int ) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int pm_qos_power_release(struct inode *inode, struct file *filp)
{
 int pm_qos_class;

 pm_qos_class = (long)filp->private_data;
 sprintf(name, "process_%d", current->pid);
 pm_qos_remove_requirement(pm_qos_class, name);

 return 0;
}
