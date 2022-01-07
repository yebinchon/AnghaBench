
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ip6t_ipv6header_info* matchinfo; } ;
struct ip6t_ipv6header_info {int invflags; int modeflag; } ;



__attribute__((used)) static bool ipv6header_mt6_check(const struct xt_mtchk_param *par)
{
 const struct ip6t_ipv6header_info *info = par->matchinfo;


 if ((!info->modeflag) && info->invflags != 0x00 &&
     info->invflags != 0xFF)
  return 0;

 return 1;
}
