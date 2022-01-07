
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct ebt_nat_info* targinfo; } ;
struct ebt_nat_info {int target; } ;


 scalar_t__ BASE_CHAIN ;
 int EBT_RETURN ;
 int EBT_VERDICT_BITS ;
 int NAT_ARP_BIT ;
 int NUM_STANDARD_TARGETS ;

__attribute__((used)) static bool ebt_snat_tg_check(const struct xt_tgchk_param *par)
{
 const struct ebt_nat_info *info = par->targinfo;
 int tmp;

 tmp = info->target | ~EBT_VERDICT_BITS;
 if (BASE_CHAIN && tmp == EBT_RETURN)
  return 0;

 if (tmp < -NUM_STANDARD_TARGETS || tmp >= 0)
  return 0;
 tmp = info->target | EBT_VERDICT_BITS;
 if ((tmp & ~NAT_ARP_BIT) != ~NAT_ARP_BIT)
  return 0;
 return 1;
}
