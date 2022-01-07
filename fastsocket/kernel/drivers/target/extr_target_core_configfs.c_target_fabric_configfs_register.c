
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_fabric_configfs {int tf_subsys; } ;


 int EINVAL ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 int target_fabric_tf_ops_check (struct target_fabric_configfs*) ;

int target_fabric_configfs_register(
 struct target_fabric_configfs *tf)
{
 int ret;

 if (!tf) {
  pr_err("Unable to locate target_fabric_configfs"
   " pointer\n");
  return -EINVAL;
 }
 if (!tf->tf_subsys) {
  pr_err("Unable to target struct config_subsystem"
   " pointer\n");
  return -EINVAL;
 }
 ret = target_fabric_tf_ops_check(tf);
 if (ret < 0)
  return ret;

 pr_debug("<<<<<<<<<<<<<<<<<<<<<< END FABRIC API >>>>>>>>>>>>"
  ">>>>>>>>>>\n");
 return 0;
}
