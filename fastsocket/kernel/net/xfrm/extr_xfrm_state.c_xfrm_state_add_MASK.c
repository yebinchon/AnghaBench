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
typedef  int u32 ;
struct TYPE_7__ {int family; int /*<<< orphan*/  saddr; int /*<<< orphan*/  reqid; int /*<<< orphan*/  mode; } ;
struct TYPE_6__ {scalar_t__ proto; int /*<<< orphan*/  daddr; } ;
struct TYPE_8__ {int v; int m; } ;
struct TYPE_5__ {scalar_t__ seq; } ;
struct xfrm_state {TYPE_3__ props; TYPE_2__ id; TYPE_4__ mark; TYPE_1__ km; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  IPSEC_PROTO_ANY ; 
 struct xfrm_state* FUNC0 (struct net*,TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct xfrm_state* FUNC1 (struct net*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_state*) ; 
 struct xfrm_state* FUNC4 (struct xfrm_state*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xfrm_state*) ; 
 int /*<<< orphan*/  xfrm_state_lock ; 
 int /*<<< orphan*/  FUNC10 (struct xfrm_state*) ; 
 struct net* FUNC11 (struct xfrm_state*) ; 

int FUNC12(struct xfrm_state *x)
{
	struct net *net = FUNC11(x);
	struct xfrm_state *x1, *to_put;
	int family;
	int err;
	u32 mark = x->mark.v & x->mark.m;
	int use_spi = FUNC8(x->id.proto, IPSEC_PROTO_ANY);

	family = x->props.family;

	to_put = NULL;

	FUNC5(&xfrm_state_lock);

	x1 = FUNC4(x, use_spi, family);
	if (x1) {
		to_put = x1;
		x1 = NULL;
		err = -EEXIST;
		goto out;
	}

	if (use_spi && x->km.seq) {
		x1 = FUNC1(net, mark, x->km.seq);
		if (x1 && ((x1->id.proto != x->id.proto) ||
		    FUNC7(&x1->id.daddr, &x->id.daddr, family))) {
			to_put = x1;
			x1 = NULL;
		}
	}

	if (use_spi && !x1)
		x1 = FUNC0(net, &x->mark, family, x->props.mode,
				     x->props.reqid, x->id.proto,
				     &x->id.daddr, &x->props.saddr, 0);

	FUNC2(x);
	FUNC3(x);
	err = 0;

out:
	FUNC6(&xfrm_state_lock);

	if (x1) {
		FUNC9(x1);
		FUNC10(x1);
	}

	if (to_put)
		FUNC10(to_put);

	return err;
}