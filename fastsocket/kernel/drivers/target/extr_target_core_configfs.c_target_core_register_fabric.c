
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char const* ci_name; } ;
struct config_group {TYPE_2__ cg_item; struct config_group** default_groups; } ;
struct TYPE_4__ {int tf_subsys; } ;
struct target_fabric_configfs {char const* tf_name; struct config_group tf_group; TYPE_2__* tf_fabric; int tf_subsys; TYPE_1__ tf_ops; struct config_group tf_disc_group; struct config_group** tf_default_groups; } ;
struct TYPE_6__ {char const tfc_wwn_cit; char const tfc_discovery_cit; } ;


 int EINVAL ;
 struct config_group* ERR_PTR (int ) ;
 TYPE_3__* TF_CIT_TMPL (struct target_fabric_configfs*) ;
 int config_group_init_type_name (struct config_group*,char const*,char const*) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,...) ;
 int request_module (char*) ;
 int strncmp (char const*,char*,int) ;
 struct target_fabric_configfs* target_core_get_fabric (char const*) ;

__attribute__((used)) static struct config_group *target_core_register_fabric(
 struct config_group *group,
 const char *name)
{
 struct target_fabric_configfs *tf;
 int ret;

 pr_debug("Target_Core_ConfigFS: REGISTER -> group: %p name:"
   " %s\n", group, name);
 if (!strncmp(name, "iscsi", 5)) {






  ret = request_module("iscsi_target_mod");
  if (ret < 0) {
   pr_err("request_module() failed for"
    " iscsi_target_mod.ko: %d\n", ret);
   return ERR_PTR(-EINVAL);
  }
 } else if (!strncmp(name, "loopback", 8)) {






  ret = request_module("tcm_loop");
  if (ret < 0) {
   pr_err("request_module() failed for"
    " tcm_loop.ko: %d\n", ret);
   return ERR_PTR(-EINVAL);
  }
 }

 tf = target_core_get_fabric(name);
 if (!tf) {
  pr_err("target_core_get_fabric() failed for %s\n",
   name);
  return ERR_PTR(-EINVAL);
 }
 pr_debug("Target_Core_ConfigFS: REGISTER -> Located fabric:"
   " %s\n", tf->tf_name);




 pr_debug("Target_Core_ConfigFS: REGISTER tfc_wwn_cit -> %p\n",
   &TF_CIT_TMPL(tf)->tfc_wwn_cit);

 tf->tf_group.default_groups = tf->tf_default_groups;
 tf->tf_group.default_groups[0] = &tf->tf_disc_group;
 tf->tf_group.default_groups[1] = ((void*)0);

 config_group_init_type_name(&tf->tf_group, name,
   &TF_CIT_TMPL(tf)->tfc_wwn_cit);
 config_group_init_type_name(&tf->tf_disc_group, "discovery_auth",
   &TF_CIT_TMPL(tf)->tfc_discovery_cit);

 pr_debug("Target_Core_ConfigFS: REGISTER -> Allocated Fabric:"
   " %s\n", tf->tf_group.cg_item.ci_name);



 tf->tf_ops.tf_subsys = tf->tf_subsys;
 tf->tf_fabric = &tf->tf_group.cg_item;
 pr_debug("Target_Core_ConfigFS: REGISTER -> Set tf->tf_fabric"
   " for %s\n", name);

 return &tf->tf_group;
}
