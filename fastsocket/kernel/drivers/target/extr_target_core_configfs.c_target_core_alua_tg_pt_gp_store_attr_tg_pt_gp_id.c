
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct config_group {int cg_item; } ;
struct t10_alua_tg_pt_gp {int tg_pt_gp_id; struct config_group tg_pt_gp_group; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int config_item_name (int *) ;
 int core_alua_set_tg_pt_gp_id (struct t10_alua_tg_pt_gp*,int ) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*,unsigned long) ;
 int strict_strtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static ssize_t target_core_alua_tg_pt_gp_store_attr_tg_pt_gp_id(
 struct t10_alua_tg_pt_gp *tg_pt_gp,
 const char *page,
 size_t count)
{
 struct config_group *alua_tg_pt_gp_cg = &tg_pt_gp->tg_pt_gp_group;
 unsigned long tg_pt_gp_id;
 int ret;

 ret = strict_strtoul(page, 0, &tg_pt_gp_id);
 if (ret < 0) {
  pr_err("strict_strtoul() returned %d for"
   " tg_pt_gp_id\n", ret);
  return -EINVAL;
 }
 if (tg_pt_gp_id > 0x0000ffff) {
  pr_err("ALUA tg_pt_gp_id: %lu exceeds maximum:"
   " 0x0000ffff\n", tg_pt_gp_id);
  return -EINVAL;
 }

 ret = core_alua_set_tg_pt_gp_id(tg_pt_gp, (u16)tg_pt_gp_id);
 if (ret < 0)
  return -EINVAL;

 pr_debug("Target_Core_ConfigFS: Set ALUA Target Port Group: "
  "core/alua/tg_pt_gps/%s to ID: %hu\n",
  config_item_name(&alua_tg_pt_gp_cg->cg_item),
  tg_pt_gp->tg_pt_gp_id);

 return count;
}
