
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_lun {TYPE_1__* lun_sep; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int sep_tg_pt_secondary_stat; } ;


 unsigned long ALUA_STATUS_ALTERED_BY_EXPLICT_STPG ;
 unsigned long ALUA_STATUS_ALTERED_BY_IMPLICT_ALUA ;
 unsigned long ALUA_STATUS_NONE ;
 size_t EINVAL ;
 int pr_err (char*,...) ;
 int strict_strtoul (char const*,int ,unsigned long*) ;

ssize_t core_alua_store_secondary_status(
 struct se_lun *lun,
 const char *page,
 size_t count)
{
 unsigned long tmp;
 int ret;

 ret = strict_strtoul(page, 0, &tmp);
 if (ret < 0) {
  pr_err("Unable to extract alua_tg_pt_status\n");
  return -EINVAL;
 }
 if ((tmp != ALUA_STATUS_NONE) &&
     (tmp != ALUA_STATUS_ALTERED_BY_EXPLICT_STPG) &&
     (tmp != ALUA_STATUS_ALTERED_BY_IMPLICT_ALUA)) {
  pr_err("Illegal value for alua_tg_pt_status: %lu\n",
    tmp);
  return -EINVAL;
 }
 lun->lun_sep->sep_tg_pt_secondary_stat = (int)tmp;

 return count;
}
