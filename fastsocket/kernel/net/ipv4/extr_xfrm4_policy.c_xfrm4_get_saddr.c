
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int a4; } ;
typedef TYPE_1__ xfrm_address_t ;
struct rtable {int rt_src; } ;
struct net {int dummy; } ;
struct dst_entry {int dummy; } ;


 int EHOSTUNREACH ;
 scalar_t__ IS_ERR (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 struct dst_entry* xfrm4_dst_lookup (struct net*,int ,int *,TYPE_1__*) ;

__attribute__((used)) static int xfrm4_get_saddr(struct net *net,
      xfrm_address_t *saddr, xfrm_address_t *daddr)
{
 struct dst_entry *dst;
 struct rtable *rt;

 dst = xfrm4_dst_lookup(net, 0, ((void*)0), daddr);
 if (IS_ERR(dst))
  return -EHOSTUNREACH;

 rt = (struct rtable *)dst;
 saddr->a4 = rt->rt_src;
 dst_release(dst);
 return 0;
}
