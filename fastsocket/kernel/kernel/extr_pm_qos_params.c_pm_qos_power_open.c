
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {void* private_data; } ;
struct TYPE_2__ {int pid; } ;


 int EPERM ;
 int PM_QOS_DEFAULT_VALUE ;
 TYPE_1__* current ;
 long find_pm_qos_object_by_minor (int ) ;
 int iminor (struct inode*) ;
 int lock_kernel () ;
 int name ;
 int pm_qos_add_requirement (long,int ,int ) ;
 int sprintf (int ,char*,int) ;
 int unlock_kernel () ;

__attribute__((used)) static int pm_qos_power_open(struct inode *inode, struct file *filp)
{
 int ret;
 long pm_qos_class;

 lock_kernel();
 pm_qos_class = find_pm_qos_object_by_minor(iminor(inode));
 if (pm_qos_class >= 0) {
  filp->private_data = (void *)pm_qos_class;
  sprintf(name, "process_%d", current->pid);
  ret = pm_qos_add_requirement(pm_qos_class, name,
     PM_QOS_DEFAULT_VALUE);
  if (ret >= 0) {
   unlock_kernel();
   return 0;
  }
 }
 unlock_kernel();

 return -EPERM;
}
