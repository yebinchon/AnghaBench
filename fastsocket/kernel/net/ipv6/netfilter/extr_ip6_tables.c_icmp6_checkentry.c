
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ip6t_icmp* matchinfo; } ;
struct ip6t_icmp {int invflags; } ;


 int IP6T_ICMP_INV ;

__attribute__((used)) static bool icmp6_checkentry(const struct xt_mtchk_param *par)
{
 const struct ip6t_icmp *icmpinfo = par->matchinfo;


 return !(icmpinfo->invflags & ~IP6T_ICMP_INV);
}
