
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_fabric_configfs {int tf_name; int tf_list; int tf_subsys; struct module* tf_module; int tf_access_cnt; } ;
struct module {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct target_fabric_configfs* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ TARGET_FABRIC_NAME_SIZE ;
 int atomic_set (int *,int ) ;
 int g_tf_list ;
 int g_tf_lock ;
 struct target_fabric_configfs* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,...) ;
 int snprintf (int ,scalar_t__,char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int * target_core_subsystem ;
 int target_fabric_setup_cits (struct target_fabric_configfs*) ;

struct target_fabric_configfs *target_fabric_configfs_init(
 struct module *fabric_mod,
 const char *name)
{
 struct target_fabric_configfs *tf;

 if (!(name)) {
  pr_err("Unable to locate passed fabric name\n");
  return ERR_PTR(-EINVAL);
 }
 if (strlen(name) >= TARGET_FABRIC_NAME_SIZE) {
  pr_err("Passed name: %s exceeds TARGET_FABRIC"
   "_NAME_SIZE\n", name);
  return ERR_PTR(-EINVAL);
 }

 tf = kzalloc(sizeof(struct target_fabric_configfs), GFP_KERNEL);
 if (!tf)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&tf->tf_list);
 atomic_set(&tf->tf_access_cnt, 0);




 tf->tf_module = fabric_mod;
 target_fabric_setup_cits(tf);

 tf->tf_subsys = target_core_subsystem[0];
 snprintf(tf->tf_name, TARGET_FABRIC_NAME_SIZE, "%s", name);

 mutex_lock(&g_tf_lock);
 list_add_tail(&tf->tf_list, &g_tf_list);
 mutex_unlock(&g_tf_lock);

 pr_debug("<<<<<<<<<<<<<<<<<<<<<< BEGIN FABRIC API >>>>>>>>"
   ">>>>>>>>>>>>>>\n");
 pr_debug("Initialized struct target_fabric_configfs: %p for"
   " %s\n", tf, tf->tf_name);
 return tf;
}
