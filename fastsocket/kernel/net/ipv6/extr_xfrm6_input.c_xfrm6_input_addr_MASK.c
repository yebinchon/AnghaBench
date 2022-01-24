#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {int flags; } ;
struct xfrm_state {int /*<<< orphan*/  lock; TYPE_4__ curlft; TYPE_3__* type; TYPE_2__ km; TYPE_1__ props; } ;
struct sk_buff {scalar_t__ len; struct sec_path* sp; int /*<<< orphan*/  mark; int /*<<< orphan*/  dev; } ;
struct sec_path {scalar_t__ len; struct xfrm_state** xvec; int /*<<< orphan*/  refcnt; } ;
struct net {int dummy; } ;
struct TYPE_7__ {scalar_t__ (* input ) (struct xfrm_state*,struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINBUFFERERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMINNOSTATES ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ XFRM_MAX_DEPTH ; 
 scalar_t__ XFRM_STATE_VALID ; 
 int XFRM_STATE_WILDRECV ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in6addr_any ; 
 scalar_t__ FUNC3 (int) ; 
 struct sec_path* FUNC4 (struct sec_path*) ; 
 int /*<<< orphan*/  FUNC5 (struct sec_path*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct xfrm_state*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xfrm_state*) ; 
 struct xfrm_state* FUNC11 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct xfrm_state*) ; 

int FUNC13(struct sk_buff *skb, xfrm_address_t *daddr,
		     xfrm_address_t *saddr, u8 proto)
{
	struct net *net = FUNC2(skb->dev);
	struct xfrm_state *x = NULL;
	int i = 0;

	/* Allocate new secpath or COW existing one. */
	if (!skb->sp || FUNC1(&skb->sp->refcnt) != 1) {
		struct sec_path *sp;

		sp = FUNC4(skb->sp);
		if (!sp) {
			FUNC0(net, LINUX_MIB_XFRMINERROR);
			goto drop;
		}
		if (skb->sp)
			FUNC5(skb->sp);
		skb->sp = sp;
	}

	if (1 + skb->sp->len == XFRM_MAX_DEPTH) {
		FUNC0(net, LINUX_MIB_XFRMINBUFFERERROR);
		goto drop;
	}

	for (i = 0; i < 3; i++) {
		xfrm_address_t *dst, *src;

		switch (i) {
		case 0:
			dst = daddr;
			src = saddr;
			break;
		case 1:
			/* lookup state with wild-card source address */
			dst = daddr;
			src = (xfrm_address_t *)&in6addr_any;
			break;
		default:
			/* lookup state with wild-card addresses */
			dst = (xfrm_address_t *)&in6addr_any;
			src = (xfrm_address_t *)&in6addr_any;
			break;
		}

		x = FUNC11(net, skb->mark, dst, src, proto, AF_INET6);
		if (!x)
			continue;

		FUNC6(&x->lock);

		if ((!i || (x->props.flags & XFRM_STATE_WILDRECV)) &&
		    FUNC3(x->km.state == XFRM_STATE_VALID) &&
		    !FUNC10(x)) {
			FUNC7(&x->lock);
			if (x->type->input(x, skb) > 0) {
				/* found a valid state */
				break;
			}
		} else
			FUNC7(&x->lock);

		FUNC12(x);
		x = NULL;
	}

	if (!x) {
		FUNC0(net, LINUX_MIB_XFRMINNOSTATES);
		FUNC9(skb, AF_INET6);
		goto drop;
	}

	skb->sp->xvec[skb->sp->len++] = x;

	FUNC6(&x->lock);

	x->curlft.bytes += skb->len;
	x->curlft.packets++;

	FUNC7(&x->lock);

	return 1;

drop:
	return -1;
}