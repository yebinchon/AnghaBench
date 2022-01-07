
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ip6t_mh* matchinfo; } ;
struct ip6t_mh {int invflags; } ;


 int IP6T_MH_INV_MASK ;

__attribute__((used)) static bool mh_mt6_check(const struct xt_mtchk_param *par)
{
 const struct ip6t_mh *mhinfo = par->matchinfo;


 return !(mhinfo->invflags & ~IP6T_MH_INV_MASK);
}
