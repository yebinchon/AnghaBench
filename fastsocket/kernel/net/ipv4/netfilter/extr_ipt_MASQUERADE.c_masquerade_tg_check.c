
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_tgchk_param {struct nf_nat_multi_range_compat* targinfo; } ;
struct nf_nat_multi_range_compat {int rangesize; TYPE_1__* range; } ;
struct TYPE_2__ {int flags; } ;


 int IP_NAT_RANGE_MAP_IPS ;
 int pr_debug (char*,...) ;

__attribute__((used)) static bool masquerade_tg_check(const struct xt_tgchk_param *par)
{
 const struct nf_nat_multi_range_compat *mr = par->targinfo;

 if (mr->range[0].flags & IP_NAT_RANGE_MAP_IPS) {
  pr_debug("masquerade_check: bad MAP_IPS.\n");
  return 0;
 }
 if (mr->rangesize != 1) {
  pr_debug("masquerade_check: bad rangesize %u\n", mr->rangesize);
  return 0;
 }
 return 1;
}
