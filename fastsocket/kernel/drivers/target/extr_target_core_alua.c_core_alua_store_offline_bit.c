
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t10_alua_tg_pt_gp_member {int dummy; } ;
struct se_lun {TYPE_1__* lun_sep; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {struct t10_alua_tg_pt_gp_member* sep_alua_tg_pt_gp_mem; } ;


 size_t EINVAL ;
 size_t ENODEV ;
 int core_alua_set_tg_pt_secondary_state (struct t10_alua_tg_pt_gp_member*,TYPE_1__*,int ,int) ;
 int pr_err (char*,...) ;
 int strict_strtoul (char const*,int ,unsigned long*) ;

ssize_t core_alua_store_offline_bit(
 struct se_lun *lun,
 const char *page,
 size_t count)
{
 struct t10_alua_tg_pt_gp_member *tg_pt_gp_mem;
 unsigned long tmp;
 int ret;

 if (!lun->lun_sep)
  return -ENODEV;

 ret = strict_strtoul(page, 0, &tmp);
 if (ret < 0) {
  pr_err("Unable to extract alua_tg_pt_offline value\n");
  return -EINVAL;
 }
 if ((tmp != 0) && (tmp != 1)) {
  pr_err("Illegal value for alua_tg_pt_offline: %lu\n",
    tmp);
  return -EINVAL;
 }
 tg_pt_gp_mem = lun->lun_sep->sep_alua_tg_pt_gp_mem;
 if (!tg_pt_gp_mem) {
  pr_err("Unable to locate *tg_pt_gp_mem\n");
  return -EINVAL;
 }

 ret = core_alua_set_tg_pt_secondary_state(tg_pt_gp_mem,
   lun->lun_sep, 0, (int)tmp);
 if (ret < 0)
  return -EINVAL;

 return count;
}
