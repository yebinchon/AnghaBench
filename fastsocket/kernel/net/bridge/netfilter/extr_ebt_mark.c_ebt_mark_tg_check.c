
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct ebt_mark_t_info* targinfo; } ;
struct ebt_mark_t_info {int target; } ;


 scalar_t__ BASE_CHAIN ;
 int EBT_RETURN ;
 int EBT_VERDICT_BITS ;
 int MARK_AND_VALUE ;
 int MARK_OR_VALUE ;
 int MARK_SET_VALUE ;
 int MARK_XOR_VALUE ;
 int NUM_STANDARD_TARGETS ;

__attribute__((used)) static bool ebt_mark_tg_check(const struct xt_tgchk_param *par)
{
 const struct ebt_mark_t_info *info = par->targinfo;
 int tmp;

 tmp = info->target | ~EBT_VERDICT_BITS;
 if (BASE_CHAIN && tmp == EBT_RETURN)
  return 0;
 if (tmp < -NUM_STANDARD_TARGETS || tmp >= 0)
  return 0;
 tmp = info->target & ~EBT_VERDICT_BITS;
 if (tmp != MARK_SET_VALUE && tmp != MARK_OR_VALUE &&
     tmp != MARK_AND_VALUE && tmp != MARK_XOR_VALUE)
  return 0;
 return 1;
}
