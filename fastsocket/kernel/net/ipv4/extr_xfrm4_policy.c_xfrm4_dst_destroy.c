
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int peer; int idev; } ;
struct TYPE_4__ {TYPE_1__ rt; } ;
struct xfrm_dst {TYPE_2__ u; } ;
struct dst_entry {int dummy; } ;


 int in_dev_put (int ) ;
 int inet_putpeer (int ) ;
 scalar_t__ likely (int ) ;
 int xfrm_dst_destroy (struct xfrm_dst*) ;

__attribute__((used)) static void xfrm4_dst_destroy(struct dst_entry *dst)
{
 struct xfrm_dst *xdst = (struct xfrm_dst *)dst;

 if (likely(xdst->u.rt.idev))
  in_dev_put(xdst->u.rt.idev);
 if (likely(xdst->u.rt.peer))
  inet_putpeer(xdst->u.rt.peer);
 xfrm_dst_destroy(xdst);
}
