
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xfrm_dst {scalar_t__ route_mtu_cached; int route; scalar_t__ child_mtu_cached; } ;
struct dst_entry {scalar_t__* metrics; int xfrm; int child; struct dst_entry* next; } ;


 int RTAX_MTU ;
 scalar_t__ dst_mtu (int ) ;
 scalar_t__ xfrm_state_mtu (int ,scalar_t__) ;

__attribute__((used)) static void xfrm_init_pmtu(struct dst_entry *dst)
{
 do {
  struct xfrm_dst *xdst = (struct xfrm_dst *)dst;
  u32 pmtu, route_mtu_cached;

  pmtu = dst_mtu(dst->child);
  xdst->child_mtu_cached = pmtu;

  pmtu = xfrm_state_mtu(dst->xfrm, pmtu);

  route_mtu_cached = dst_mtu(xdst->route);
  xdst->route_mtu_cached = route_mtu_cached;

  if (pmtu > route_mtu_cached)
   pmtu = route_mtu_cached;

  dst->metrics[RTAX_MTU-1] = pmtu;
 } while ((dst = dst->next));
}
