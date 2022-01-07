
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_multiport {int count; int flags; } ;
struct xt_mtchk_param {struct xt_multiport* matchinfo; struct ip6t_ip6* entryinfo; } ;
struct ip6t_ip6 {int invflags; int proto; } ;


 int check (int ,int ,int ,int ) ;

__attribute__((used)) static bool multiport_mt6_check_v0(const struct xt_mtchk_param *par)
{
 const struct ip6t_ip6 *ip = par->entryinfo;
 const struct xt_multiport *multiinfo = par->matchinfo;

 return check(ip->proto, ip->invflags, multiinfo->flags,
       multiinfo->count);
}
