
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct config_group {int cg_item; } ;
struct t10_alua_lu_gp {int lu_gp_id; struct config_group lu_gp_group; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int config_item_name (int *) ;
 int core_alua_set_lu_gp_id (struct t10_alua_lu_gp*,int ) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*,unsigned long) ;
 int strict_strtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static ssize_t target_core_alua_lu_gp_store_attr_lu_gp_id(
 struct t10_alua_lu_gp *lu_gp,
 const char *page,
 size_t count)
{
 struct config_group *alua_lu_gp_cg = &lu_gp->lu_gp_group;
 unsigned long lu_gp_id;
 int ret;

 ret = strict_strtoul(page, 0, &lu_gp_id);
 if (ret < 0) {
  pr_err("strict_strtoul() returned %d for"
   " lu_gp_id\n", ret);
  return -EINVAL;
 }
 if (lu_gp_id > 0x0000ffff) {
  pr_err("ALUA lu_gp_id: %lu exceeds maximum:"
   " 0x0000ffff\n", lu_gp_id);
  return -EINVAL;
 }

 ret = core_alua_set_lu_gp_id(lu_gp, (u16)lu_gp_id);
 if (ret < 0)
  return -EINVAL;

 pr_debug("Target_Core_ConfigFS: Set ALUA Logical Unit"
  " Group: core/alua/lu_gps/%s to ID: %hu\n",
  config_item_name(&alua_lu_gp_cg->cg_item),
  lu_gp->lu_gp_id);

 return count;
}
