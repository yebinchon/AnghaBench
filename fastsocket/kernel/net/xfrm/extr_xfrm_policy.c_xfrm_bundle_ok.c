
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xfrm_policy {int dummy; } ;
struct dst_entry {scalar_t__ next; scalar_t__* metrics; TYPE_5__* xfrm; struct dst_entry* child; scalar_t__ dev; struct dst_entry* path; } ;
struct TYPE_11__ {struct dst_entry dst; } ;
struct xfrm_dst {scalar_t__ xfrm_genid; scalar_t__ num_pols; scalar_t__ policy_genid; scalar_t__ child_mtu_cached; scalar_t__ route_mtu_cached; TYPE_4__ u; struct dst_entry* route; int route_cookie; TYPE_2__** pols; int * partner; scalar_t__ origin; int path_cookie; } ;
struct flowi {int dummy; } ;
struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_12__ {scalar_t__ genid; TYPE_3__* outer_mode; TYPE_1__ km; int sel; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int genid; } ;


 int RTAX_MTU ;
 int XFRM_MODE_FLAG_TUNNEL ;
 scalar_t__ XFRM_STATE_VALID ;
 scalar_t__ atomic_read (int *) ;
 int dst_check (struct dst_entry*,int ) ;
 scalar_t__ dst_mtu (struct dst_entry*) ;
 int flow_cache_uli_match (scalar_t__,struct flowi*) ;
 scalar_t__ likely (int) ;
 int netif_running (scalar_t__) ;
 int security_xfrm_state_pol_flow_match (TYPE_5__*,struct xfrm_policy*,struct flowi*) ;
 int xfrm_selector_match (int *,struct flowi*,int) ;
 int xfrm_state_addr_flow_check (TYPE_5__*,struct flowi*,int) ;
 scalar_t__ xfrm_state_mtu (TYPE_5__*,scalar_t__) ;

int xfrm_bundle_ok(struct xfrm_policy *pol, struct xfrm_dst *first,
  struct flowi *fl, int family, int strict)
{
 struct dst_entry *dst = &first->u.dst;
 struct xfrm_dst *last;
 u32 mtu;

 if (!dst_check(dst->path, ((struct xfrm_dst *)dst)->path_cookie) ||
     (dst->dev && !netif_running(dst->dev)))
  return 0;
 last = ((void*)0);

 do {
  struct xfrm_dst *xdst = (struct xfrm_dst *)dst;

  if (fl && !xfrm_selector_match(&dst->xfrm->sel, fl, family))
   return 0;
  if (fl && pol &&
      !security_xfrm_state_pol_flow_match(dst->xfrm, pol, fl))
   return 0;
  if (dst->xfrm->km.state != XFRM_STATE_VALID)
   return 0;
  if (xdst->xfrm_genid != dst->xfrm->genid)
   return 0;
  if (xdst->num_pols > 0 &&
      xdst->policy_genid != atomic_read(&xdst->pols[0]->genid))
   return 0;

  if (strict && fl &&
      !(dst->xfrm->outer_mode->flags & XFRM_MODE_FLAG_TUNNEL) &&
      !xfrm_state_addr_flow_check(dst->xfrm, fl, family))
   return 0;

  mtu = dst_mtu(dst->child);
  if (xdst->child_mtu_cached != mtu) {
   last = xdst;
   xdst->child_mtu_cached = mtu;
  }

  if (!dst_check(xdst->route, xdst->route_cookie))
   return 0;
  mtu = dst_mtu(xdst->route);
  if (xdst->route_mtu_cached != mtu) {
   last = xdst;
   xdst->route_mtu_cached = mtu;
  }

  dst = dst->child;
 } while (dst->xfrm);

 if (likely(!last))
  return 1;

 mtu = last->child_mtu_cached;
 for (;;) {
  dst = &last->u.dst;

  mtu = xfrm_state_mtu(dst->xfrm, mtu);
  if (mtu > last->route_mtu_cached)
   mtu = last->route_mtu_cached;
  dst->metrics[RTAX_MTU-1] = mtu;

  if (last == first)
   break;

  last = (struct xfrm_dst *)last->u.dst.next;
  last->child_mtu_cached = mtu;
 }

 return 1;
}
