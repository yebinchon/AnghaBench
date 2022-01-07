
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ip6t_ah* matchinfo; } ;
struct ip6t_ah {int invflags; } ;


 int IP6T_AH_INV_MASK ;
 int pr_debug (char*,int) ;

__attribute__((used)) static bool ah_mt6_check(const struct xt_mtchk_param *par)
{
 const struct ip6t_ah *ahinfo = par->matchinfo;

 if (ahinfo->invflags & ~IP6T_AH_INV_MASK) {
  pr_debug("ip6t_ah: unknown flags %X\n", ahinfo->invflags);
  return 0;
 }
 return 1;
}
