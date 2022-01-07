
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct ebt_log_info* targinfo; } ;
struct ebt_log_info {int bitmask; int loglevel; char* prefix; } ;


 int EBT_LOG_MASK ;
 int EBT_LOG_PREFIX_SIZE ;

__attribute__((used)) static bool ebt_log_tg_check(const struct xt_tgchk_param *par)
{
 struct ebt_log_info *info = par->targinfo;

 if (info->bitmask & ~EBT_LOG_MASK)
  return 0;
 if (info->loglevel >= 8)
  return 0;
 info->prefix[EBT_LOG_PREFIX_SIZE - 1] = '\0';
 return 1;
}
