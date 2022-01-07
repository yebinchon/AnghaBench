
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp {int tg_pt_gp_pref; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int pr_err (char*,...) ;
 int strict_strtoul (char const*,int ,unsigned long*) ;

ssize_t core_alua_store_preferred_bit(
 struct t10_alua_tg_pt_gp *tg_pt_gp,
 const char *page,
 size_t count)
{
 unsigned long tmp;
 int ret;

 ret = strict_strtoul(page, 0, &tmp);
 if (ret < 0) {
  pr_err("Unable to extract preferred ALUA value\n");
  return -EINVAL;
 }
 if ((tmp != 0) && (tmp != 1)) {
  pr_err("Illegal value for preferred ALUA: %lu\n", tmp);
  return -EINVAL;
 }
 tg_pt_gp->tg_pt_gp_pref = (int)tmp;

 return count;
}
