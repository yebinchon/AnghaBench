
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int tg_pt_gp_write_metadata; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int pr_err (char*,...) ;
 int strict_strtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static ssize_t target_core_alua_tg_pt_gp_store_attr_alua_write_metadata(
 struct t10_alua_tg_pt_gp *tg_pt_gp,
 const char *page,
 size_t count)
{
 unsigned long tmp;
 int ret;

 ret = strict_strtoul(page, 0, &tmp);
 if (ret < 0) {
  pr_err("Unable to extract alua_write_metadata\n");
  return -EINVAL;
 }

 if ((tmp != 0) && (tmp != 1)) {
  pr_err("Illegal value for alua_write_metadata:"
   " %lu\n", tmp);
  return -EINVAL;
 }
 tg_pt_gp->tg_pt_gp_write_metadata = (int)tmp;

 return count;
}
