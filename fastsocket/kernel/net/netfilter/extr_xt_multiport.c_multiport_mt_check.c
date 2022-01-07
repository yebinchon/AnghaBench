
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_multiport_v1 {int count; int flags; } ;
struct xt_mtchk_param {struct xt_multiport_v1* matchinfo; struct ipt_ip* entryinfo; } ;
struct ipt_ip {int invflags; int proto; } ;


 int check (int ,int ,int ,int ) ;

__attribute__((used)) static bool multiport_mt_check(const struct xt_mtchk_param *par)
{
 const struct ipt_ip *ip = par->entryinfo;
 const struct xt_multiport_v1 *multiinfo = par->matchinfo;

 return check(ip->proto, ip->invflags, multiinfo->flags,
       multiinfo->count);
}
