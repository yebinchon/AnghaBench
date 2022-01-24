#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct xfrm_state {int dummy; } ;
struct xfrm_policy {int /*<<< orphan*/  genid; int /*<<< orphan*/  selector; } ;
struct xfrm_dst {int num_xfrms; int num_pols; int /*<<< orphan*/  policy_genid; int /*<<< orphan*/  pols; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 struct xfrm_dst* FUNC0 (struct dst_entry*) ; 
 struct xfrm_dst* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct dst_entry*) ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTBUNDLECHECKERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTBUNDLEGENERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTPOLERROR ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int XFRM_MAX_DEPTH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct xfrm_policy**,int) ; 
 scalar_t__ FUNC7 (int) ; 
 struct dst_entry* FUNC8 (struct xfrm_policy*,struct xfrm_state**,int,struct flowi*,struct dst_entry*) ; 
 int FUNC9 (struct dst_entry*,struct flowi*) ; 
 int FUNC10 (struct dst_entry*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct xfrm_policy**,int,struct flowi*,struct xfrm_state**,int /*<<< orphan*/ ) ; 
 struct net* FUNC12 (struct xfrm_policy*) ; 

__attribute__((used)) static struct xfrm_dst *
FUNC13(struct xfrm_policy **pols, int num_pols,
			       struct flowi *fl, u16 family,
			       struct dst_entry *dst_orig)
{
	struct net *net = FUNC12(pols[0]);
	struct xfrm_state *xfrm[XFRM_MAX_DEPTH];
	struct dst_entry *dst;
	struct xfrm_dst *xdst;
	int err;

	/* Try to instantiate a bundle */
	err = FUNC11(pols, num_pols, fl, xfrm, family);
	if (err <= 0) {
		if (err != 0 && err != -EAGAIN)
			FUNC3(net, LINUX_MIB_XFRMOUTPOLERROR);
		return FUNC1(err);
	}

	dst = FUNC8(pols[0], xfrm, err, fl, dst_orig);
	if (FUNC2(dst)) {
		FUNC3(net, LINUX_MIB_XFRMOUTBUNDLEGENERROR);
		return FUNC0(dst);
	}

	xdst = (struct xfrm_dst *)dst;
	xdst->num_xfrms = err;
	if (num_pols > 1)
		err = FUNC10(dst, &pols[1]->selector);
	else
		err = FUNC9(dst, fl);
	if (FUNC7(err)) {
		FUNC5(dst);
		FUNC3(net, LINUX_MIB_XFRMOUTBUNDLECHECKERROR);
		return FUNC1(err);
	}

	xdst->num_pols = num_pols;
	FUNC6(xdst->pols, pols, sizeof(struct xfrm_policy*) * num_pols);
	xdst->policy_genid = FUNC4(&pols[0]->genid);

	return xdst;
}