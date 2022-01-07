
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {int hook_mask; int table; struct ebt_redirect_info* targinfo; } ;
struct ebt_redirect_info {scalar_t__ target; } ;


 scalar_t__ BASE_CHAIN ;
 scalar_t__ EBT_RETURN ;
 scalar_t__ INVALID_TARGET ;
 int NF_BR_BROUTING ;
 int NF_BR_NUMHOOKS ;
 int NF_BR_PRE_ROUTING ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bool ebt_redirect_tg_check(const struct xt_tgchk_param *par)
{
 const struct ebt_redirect_info *info = par->targinfo;
 unsigned int hook_mask;

 if (BASE_CHAIN && info->target == EBT_RETURN)
  return 0;

 hook_mask = par->hook_mask & ~(1 << NF_BR_NUMHOOKS);
 if ((strcmp(par->table, "nat") != 0 ||
     hook_mask & ~(1 << NF_BR_PRE_ROUTING)) &&
     (strcmp(par->table, "broute") != 0 ||
     hook_mask & ~(1 << NF_BR_BROUTING)))
  return 0;
 if (INVALID_TARGET)
  return 0;
 return 1;
}
