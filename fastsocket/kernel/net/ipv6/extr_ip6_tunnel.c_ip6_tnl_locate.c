
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ip6_tnl_parm {struct in6_addr laddr; struct in6_addr raddr; } ;
struct ip6_tnl_net {int dummy; } ;
struct TYPE_2__ {int raddr; int laddr; } ;
struct ip6_tnl {TYPE_1__ parms; struct ip6_tnl* next; } ;


 struct ip6_tnl** ip6_tnl_bucket (struct ip6_tnl_net*,struct ip6_tnl_parm*) ;
 struct ip6_tnl* ip6_tnl_create (struct net*,struct ip6_tnl_parm*) ;
 int ip6_tnl_net_id ;
 scalar_t__ ipv6_addr_equal (struct in6_addr*,int *) ;
 struct ip6_tnl_net* net_generic (struct net*,int ) ;

__attribute__((used)) static struct ip6_tnl *ip6_tnl_locate(struct net *net,
  struct ip6_tnl_parm *p, int create)
{
 struct in6_addr *remote = &p->raddr;
 struct in6_addr *local = &p->laddr;
 struct ip6_tnl *t;
 struct ip6_tnl_net *ip6n = net_generic(net, ip6_tnl_net_id);

 for (t = *ip6_tnl_bucket(ip6n, p); t; t = t->next) {
  if (ipv6_addr_equal(local, &t->parms.laddr) &&
      ipv6_addr_equal(remote, &t->parms.raddr))
   return t;
 }
 if (!create)
  return ((void*)0);
 return ip6_tnl_create(net, p);
}
