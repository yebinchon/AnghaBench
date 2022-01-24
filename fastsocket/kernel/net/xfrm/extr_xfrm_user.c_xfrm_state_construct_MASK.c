#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct xfrm_usersa_info {int /*<<< orphan*/  seq; } ;
struct TYPE_10__ {int /*<<< orphan*/  state; int /*<<< orphan*/  seq; } ;
struct TYPE_9__ {scalar_t__ oseq; scalar_t__ seq; } ;
struct TYPE_8__ {scalar_t__ oseq; scalar_t__ seq; scalar_t__ bitmap; } ;
struct TYPE_6__ {int /*<<< orphan*/  calgo; int /*<<< orphan*/  ealgo; int /*<<< orphan*/  aalgo; } ;
struct xfrm_state {int replay_maxage; TYPE_5__ km; scalar_t__ replay_maxdiff; TYPE_4__ replay; TYPE_3__ preplay; int /*<<< orphan*/  mark; int /*<<< orphan*/ * coaddr; int /*<<< orphan*/ * encap; TYPE_1__ props; int /*<<< orphan*/  calg; int /*<<< orphan*/  ealg; int /*<<< orphan*/  aalg; int /*<<< orphan*/  aead; } ;
struct nlattr {int dummy; } ;
struct TYPE_7__ {int sysctl_aevent_etime; scalar_t__ sysctl_aevent_rseqth; } ;
struct net {TYPE_2__ xfrm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 size_t XFRMA_ALG_AEAD ; 
 size_t XFRMA_ALG_AUTH ; 
 size_t XFRMA_ALG_AUTH_TRUNC ; 
 size_t XFRMA_ALG_COMP ; 
 size_t XFRMA_ALG_CRYPT ; 
 size_t XFRMA_COADDR ; 
 size_t XFRMA_ENCAP ; 
 size_t XFRMA_SEC_CTX ; 
 int XFRM_AE_ETH_M ; 
 int /*<<< orphan*/  XFRM_STATE_DEAD ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nlattr*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nlattr*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nlattr*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_state*,struct xfrm_usersa_info*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 scalar_t__ FUNC7 (struct xfrm_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfrm_calg_get_byname ; 
 int /*<<< orphan*/  xfrm_ealg_get_byname ; 
 int FUNC8 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct nlattr**,int /*<<< orphan*/ *) ; 
 struct xfrm_state* FUNC10 (struct net*) ; 
 int /*<<< orphan*/  FUNC11 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct xfrm_state*,struct nlattr**) ; 

__attribute__((used)) static struct xfrm_state *FUNC13(struct net *net,
					       struct xfrm_usersa_info *p,
					       struct nlattr **attrs,
					       int *errp)
{
	struct xfrm_state *x = FUNC10(net);
	int err = -ENOMEM;

	if (!x)
		goto error_no_put;

	FUNC4(x, p);

	if ((err = FUNC0(&x->aead, &x->props.ealgo,
			       attrs[XFRMA_ALG_AEAD])))
		goto error;
	if ((err = FUNC2(&x->aalg, &x->props.aalgo,
				     attrs[XFRMA_ALG_AUTH_TRUNC])))
		goto error;
	if (!x->props.aalgo) {
		if ((err = FUNC1(&x->aalg, &x->props.aalgo,
				       attrs[XFRMA_ALG_AUTH])))
			goto error;
	}
	if ((err = FUNC3(&x->ealg, &x->props.ealgo,
				   xfrm_ealg_get_byname,
				   attrs[XFRMA_ALG_CRYPT])))
		goto error;
	if ((err = FUNC3(&x->calg, &x->props.calgo,
				   xfrm_calg_get_byname,
				   attrs[XFRMA_ALG_COMP])))
		goto error;

	if (attrs[XFRMA_ENCAP]) {
		x->encap = FUNC5(FUNC6(attrs[XFRMA_ENCAP]),
				   sizeof(*x->encap), GFP_KERNEL);
		if (x->encap == NULL)
			goto error;
	}

	if (attrs[XFRMA_COADDR]) {
		x->coaddr = FUNC5(FUNC6(attrs[XFRMA_COADDR]),
				    sizeof(*x->coaddr), GFP_KERNEL);
		if (x->coaddr == NULL)
			goto error;
	}

	FUNC9(attrs, &x->mark);

	err = FUNC8(x);
	if (err)
		goto error;

	if (attrs[XFRMA_SEC_CTX] &&
	    FUNC7(x, FUNC6(attrs[XFRMA_SEC_CTX])))
		goto error;

	x->km.seq = p->seq;
	x->replay_maxdiff = net->xfrm.sysctl_aevent_rseqth;
	/* sysctl_xfrm_aevent_etime is in 100ms units */
	x->replay_maxage = (net->xfrm.sysctl_aevent_etime*HZ)/XFRM_AE_ETH_M;
	x->preplay.bitmap = 0;
	x->preplay.seq = x->replay.seq+x->replay_maxdiff;
	x->preplay.oseq = x->replay.oseq +x->replay_maxdiff;

	/* override default values from above */

	FUNC12(x, attrs);

	return x;

error:
	x->km.state = XFRM_STATE_DEAD;
	FUNC11(x);
error_no_put:
	*errp = err;
	return NULL;
}