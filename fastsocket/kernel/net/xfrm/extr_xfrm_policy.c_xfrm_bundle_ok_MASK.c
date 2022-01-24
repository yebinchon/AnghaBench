#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct xfrm_policy {int dummy; } ;
struct dst_entry {scalar_t__ next; scalar_t__* metrics; TYPE_5__* xfrm; struct dst_entry* child; scalar_t__ dev; struct dst_entry* path; } ;
struct TYPE_11__ {struct dst_entry dst; } ;
struct xfrm_dst {scalar_t__ xfrm_genid; scalar_t__ num_pols; scalar_t__ policy_genid; scalar_t__ child_mtu_cached; scalar_t__ route_mtu_cached; TYPE_4__ u; struct dst_entry* route; int /*<<< orphan*/  route_cookie; TYPE_2__** pols; int /*<<< orphan*/ * partner; scalar_t__ origin; int /*<<< orphan*/  path_cookie; } ;
struct flowi {int dummy; } ;
struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_12__ {scalar_t__ genid; TYPE_3__* outer_mode; TYPE_1__ km; int /*<<< orphan*/  sel; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  genid; } ;

/* Variables and functions */
 int RTAX_MTU ; 
 int XFRM_MODE_FLAG_TUNNEL ; 
 scalar_t__ XFRM_STATE_VALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct flowi*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,struct xfrm_policy*,struct flowi*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct flowi*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,struct flowi*,int) ; 
 scalar_t__ FUNC9 (TYPE_5__*,scalar_t__) ; 

int FUNC10(struct xfrm_policy *pol, struct xfrm_dst *first,
		struct flowi *fl, int family, int strict)
{
	struct dst_entry *dst = &first->u.dst;
	struct xfrm_dst *last;
	u32 mtu;

	if (!FUNC1(dst->path, ((struct xfrm_dst *)dst)->path_cookie) ||
	    (dst->dev && !FUNC5(dst->dev)))
		return 0;
#if 0
#ifdef CONFIG_XFRM_SUB_POLICY
	if (fl) {
		if (first->origin && !flow_cache_uli_match(first->origin, fl))
			return 0;
		if (first->partner &&
		    !xfrm_selector_match(first->partner, fl, family))
			return 0;
	}
#endif
#endif

	last = NULL;

	do {
		struct xfrm_dst *xdst = (struct xfrm_dst *)dst;

		if (fl && !FUNC7(&dst->xfrm->sel, fl, family))
			return 0;
		if (fl && pol &&
		    !FUNC6(dst->xfrm, pol, fl))
			return 0;
		if (dst->xfrm->km.state != XFRM_STATE_VALID)
			return 0;
		if (xdst->xfrm_genid != dst->xfrm->genid)
			return 0;
		if (xdst->num_pols > 0 &&
		    xdst->policy_genid != FUNC0(&xdst->pols[0]->genid))
			return 0;

		if (strict && fl &&
		    !(dst->xfrm->outer_mode->flags & XFRM_MODE_FLAG_TUNNEL) &&
		    !FUNC8(dst->xfrm, fl, family))
			return 0;

		mtu = FUNC2(dst->child);
		if (xdst->child_mtu_cached != mtu) {
			last = xdst;
			xdst->child_mtu_cached = mtu;
		}

		if (!FUNC1(xdst->route, xdst->route_cookie))
			return 0;
		mtu = FUNC2(xdst->route);
		if (xdst->route_mtu_cached != mtu) {
			last = xdst;
			xdst->route_mtu_cached = mtu;
		}

		dst = dst->child;
	} while (dst->xfrm);

	if (FUNC4(!last))
		return 1;

	mtu = last->child_mtu_cached;
	for (;;) {
		dst = &last->u.dst;

		mtu = FUNC9(dst->xfrm, mtu);
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