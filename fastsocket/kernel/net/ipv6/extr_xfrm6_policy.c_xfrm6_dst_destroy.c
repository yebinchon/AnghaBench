
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rt6i_idev; } ;
struct TYPE_4__ {TYPE_1__ rt6; } ;
struct xfrm_dst {TYPE_2__ u; } ;
struct dst_entry {int dummy; } ;


 int in6_dev_put (int ) ;
 scalar_t__ likely (int ) ;
 int xfrm_dst_destroy (struct xfrm_dst*) ;

__attribute__((used)) static void xfrm6_dst_destroy(struct dst_entry *dst)
{
 struct xfrm_dst *xdst = (struct xfrm_dst *)dst;

 if (likely(xdst->u.rt6.rt6i_idev))
  in6_dev_put(xdst->u.rt6.rt6i_idev);
 xfrm_dst_destroy(xdst);
}
