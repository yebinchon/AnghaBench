
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net {int dummy; } ;
struct ip6_tnl_net {struct ip6_tnl** tnls_wc; struct ip6_tnl** tnls_r_l; } ;
struct TYPE_3__ {int raddr; int laddr; } ;
struct ip6_tnl {TYPE_2__* dev; TYPE_1__ parms; struct ip6_tnl* next; } ;
struct in6_addr {int dummy; } ;
struct TYPE_4__ {int flags; } ;


 unsigned int HASH (struct in6_addr*) ;
 int IFF_UP ;
 int ip6_tnl_net_id ;
 scalar_t__ ipv6_addr_equal (struct in6_addr*,int *) ;
 struct ip6_tnl_net* net_generic (struct net*,int ) ;

__attribute__((used)) static struct ip6_tnl *
ip6_tnl_lookup(struct net *net, struct in6_addr *remote, struct in6_addr *local)
{
 unsigned h0 = HASH(remote);
 unsigned h1 = HASH(local);
 struct ip6_tnl *t;
 struct ip6_tnl_net *ip6n = net_generic(net, ip6_tnl_net_id);

 for (t = ip6n->tnls_r_l[h0 ^ h1]; t; t = t->next) {
  if (ipv6_addr_equal(local, &t->parms.laddr) &&
      ipv6_addr_equal(remote, &t->parms.raddr) &&
      (t->dev->flags & IFF_UP))
   return t;
 }
 if ((t = ip6n->tnls_wc[0]) != ((void*)0) && (t->dev->flags & IFF_UP))
  return t;

 return ((void*)0);
}
