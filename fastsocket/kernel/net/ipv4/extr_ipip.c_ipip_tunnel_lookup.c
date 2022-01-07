
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net {int dummy; } ;
struct ipip_net {struct ip_tunnel** tunnels_wc; struct ip_tunnel** tunnels_l; struct ip_tunnel** tunnels_r; struct ip_tunnel** tunnels_r_l; } ;
struct TYPE_4__ {scalar_t__ saddr; scalar_t__ daddr; } ;
struct TYPE_5__ {TYPE_1__ iph; } ;
struct ip_tunnel {TYPE_3__* dev; TYPE_2__ parms; struct ip_tunnel* next; } ;
typedef scalar_t__ __be32 ;
struct TYPE_6__ {int flags; } ;


 unsigned int HASH (scalar_t__) ;
 int IFF_UP ;
 int ipip_net_id ;
 struct ipip_net* net_generic (struct net*,int ) ;

__attribute__((used)) static struct ip_tunnel * ipip_tunnel_lookup(struct net *net,
  __be32 remote, __be32 local)
{
 unsigned h0 = HASH(remote);
 unsigned h1 = HASH(local);
 struct ip_tunnel *t;
 struct ipip_net *ipn = net_generic(net, ipip_net_id);

 for (t = ipn->tunnels_r_l[h0^h1]; t; t = t->next) {
  if (local == t->parms.iph.saddr &&
      remote == t->parms.iph.daddr && (t->dev->flags&IFF_UP))
   return t;
 }
 for (t = ipn->tunnels_r[h0]; t; t = t->next) {
  if (remote == t->parms.iph.daddr && (t->dev->flags&IFF_UP))
   return t;
 }
 for (t = ipn->tunnels_l[h1]; t; t = t->next) {
  if (local == t->parms.iph.saddr && (t->dev->flags&IFF_UP))
   return t;
 }
 if ((t = ipn->tunnels_wc[0]) != ((void*)0) && (t->dev->flags&IFF_UP))
  return t;
 return ((void*)0);
}
