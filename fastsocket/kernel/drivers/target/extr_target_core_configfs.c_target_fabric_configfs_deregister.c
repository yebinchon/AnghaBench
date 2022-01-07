
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_fabric_configfs {struct configfs_subsystem* tf_subsys; int * tf_module; int tf_name; int tf_list; int tf_access_cnt; } ;
struct configfs_subsystem {int dummy; } ;


 int BUG () ;
 scalar_t__ atomic_read (int *) ;
 int g_tf_lock ;
 int kfree (struct target_fabric_configfs*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,...) ;

void target_fabric_configfs_deregister(
 struct target_fabric_configfs *tf)
{
 struct configfs_subsystem *su;

 if (!tf) {
  pr_err("Unable to locate passed target_fabric_"
   "configfs\n");
  return;
 }
 su = tf->tf_subsys;
 if (!su) {
  pr_err("Unable to locate passed tf->tf_subsys"
   " pointer\n");
  return;
 }
 pr_debug("<<<<<<<<<<<<<<<<<<<<<< BEGIN FABRIC API >>>>>>>>>>"
   ">>>>>>>>>>>>\n");
 mutex_lock(&g_tf_lock);
 if (atomic_read(&tf->tf_access_cnt)) {
  mutex_unlock(&g_tf_lock);
  pr_err("Non zero tf->tf_access_cnt for fabric %s\n",
   tf->tf_name);
  BUG();
 }
 list_del(&tf->tf_list);
 mutex_unlock(&g_tf_lock);

 pr_debug("Target_Core_ConfigFS: DEREGISTER -> Releasing tf:"
   " %s\n", tf->tf_name);
 tf->tf_module = ((void*)0);
 tf->tf_subsys = ((void*)0);
 kfree(tf);

 pr_debug("<<<<<<<<<<<<<<<<<<<<<< END FABRIC API >>>>>>>>>>>>>>>>>"
   ">>>>>\n");
}
