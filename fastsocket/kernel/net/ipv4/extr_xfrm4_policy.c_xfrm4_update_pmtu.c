
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xfrm_dst {struct dst_entry* route; } ;
struct dst_entry {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* update_pmtu ) (struct dst_entry*,int ) ;} ;


 int stub1 (struct dst_entry*,int ) ;

__attribute__((used)) static void xfrm4_update_pmtu(struct dst_entry *dst, u32 mtu)
{
 struct xfrm_dst *xdst = (struct xfrm_dst *)dst;
 struct dst_entry *path = xdst->route;

 path->ops->update_pmtu(path, mtu);
}
