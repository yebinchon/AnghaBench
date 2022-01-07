
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct flowi {int oif; int proto; int fl4_tos; void* fl4_src; void* fl4_dst; } ;
typedef int __u8 ;
typedef void* __be32 ;


 struct rtable* ERR_PTR (int) ;
 int ip_route_output_key (struct net*,struct rtable**,struct flowi*) ;
 int memset (struct flowi*,int ,int) ;

__attribute__((used)) static inline struct rtable *ip_route_output_tunnel(struct net *net,
          struct flowi *fl4,
          int proto,
          __be32 daddr, __be32 saddr,
          __be32 key, __u8 tos, int oif)
{
 struct rtable *rt;
 int err;

 memset(fl4, 0, sizeof(*fl4));
 fl4->oif = oif;
 fl4->fl4_dst = daddr;
 fl4->fl4_src = saddr;
 fl4->fl4_tos = tos;
 fl4->proto = proto;
 err = ip_route_output_key(net, &rt, fl4);
 if (err)
  return ERR_PTR(err);
 return rt;
}
