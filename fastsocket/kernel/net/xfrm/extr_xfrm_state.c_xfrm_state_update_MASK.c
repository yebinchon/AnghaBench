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
struct TYPE_8__ {scalar_t__ use_time; } ;
struct TYPE_7__ {scalar_t__ state; scalar_t__ dying; } ;
struct TYPE_6__ {int /*<<< orphan*/  family; } ;
struct TYPE_5__ {int /*<<< orphan*/  proto; } ;
struct xfrm_state {int /*<<< orphan*/  lock; TYPE_4__ curlft; int /*<<< orphan*/  timer; TYPE_3__ km; int /*<<< orphan*/  lft; int /*<<< orphan*/  sel; int /*<<< orphan*/ * coaddr; int /*<<< orphan*/ * encap; TYPE_2__ props; TYPE_1__ id; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ESRCH ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  IPSEC_PROTO_ANY ; 
 scalar_t__ XFRM_STATE_ACQ ; 
 scalar_t__ XFRM_STATE_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct xfrm_state*) ; 
 struct xfrm_state* FUNC1 (struct xfrm_state*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfrm_state*) ; 
 scalar_t__ FUNC11 (struct xfrm_state*) ; 
 int /*<<< orphan*/  xfrm_state_lock ; 
 int /*<<< orphan*/  FUNC12 (struct xfrm_state*) ; 

int FUNC13(struct xfrm_state *x)
{
	struct xfrm_state *x1, *to_put;
	int err;
	int use_spi = FUNC8(x->id.proto, IPSEC_PROTO_ANY);

	to_put = NULL;

	FUNC6(&xfrm_state_lock);
	x1 = FUNC1(x, use_spi, x->props.family);

	err = -ESRCH;
	if (!x1)
		goto out;

	if (FUNC11(x1)) {
		to_put = x1;
		err = -EEXIST;
		goto out;
	}

	if (x1->km.state == XFRM_STATE_ACQ) {
		FUNC0(x);
		x = NULL;
	}
	err = 0;

out:
	FUNC7(&xfrm_state_lock);

	if (to_put)
		FUNC12(to_put);

	if (err)
		return err;

	if (!x) {
		FUNC10(x1);
		FUNC12(x1);
		return 0;
	}

	err = -EINVAL;
	FUNC6(&x1->lock);
	if (FUNC2(x1->km.state == XFRM_STATE_VALID)) {
		if (x->encap && x1->encap)
			FUNC4(x1->encap, x->encap, sizeof(*x1->encap));
		if (x->coaddr && x1->coaddr) {
			FUNC4(x1->coaddr, x->coaddr, sizeof(*x1->coaddr));
		}
		if (!use_spi && FUNC3(&x1->sel, &x->sel, sizeof(x1->sel)))
			FUNC4(&x1->sel, &x->sel, sizeof(x1->sel));
		FUNC4(&x1->lft, &x->lft, sizeof(x1->lft));
		x1->km.dying = 0;

		FUNC5(&x1->timer, jiffies + HZ);
		if (x1->curlft.use_time)
			FUNC9(x1);

		err = 0;
	}
	FUNC7(&x1->lock);

	FUNC12(x1);

	return err;
}