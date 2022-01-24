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
struct TYPE_10__ {scalar_t__ spi; } ;
struct TYPE_8__ {scalar_t__ state; int dying; } ;
struct TYPE_7__ {unsigned long add_time; scalar_t__ use_time; } ;
struct TYPE_6__ {long hard_add_expires_seconds; long hard_use_expires_seconds; long soft_add_expires_seconds; long soft_use_expires_seconds; } ;
struct xfrm_state {int /*<<< orphan*/  lock; TYPE_5__ id; TYPE_3__ km; int /*<<< orphan*/  timer; TYPE_2__ curlft; TYPE_1__ lft; } ;
struct TYPE_9__ {int /*<<< orphan*/  km_waitq; } ;
struct net {TYPE_4__ xfrm; } ;

/* Variables and functions */
 long LONG_MAX ; 
 scalar_t__ XFRM_STATE_ACQ ; 
 scalar_t__ XFRM_STATE_DEAD ; 
 scalar_t__ XFRM_STATE_EXPIRED ; 
 int FUNC0 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 unsigned long FUNC3 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_state*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct xfrm_state*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC11 (struct xfrm_state*) ; 

__attribute__((used)) static void FUNC12(unsigned long data)
{
	struct xfrm_state *x = (struct xfrm_state*)data;
	struct net *net = FUNC11(x);
	unsigned long now = FUNC3();
	long next = LONG_MAX;
	int warn = 0;
	int err = 0;

	FUNC7(&x->lock);
	if (x->km.state == XFRM_STATE_DEAD)
		goto out;
	if (x->km.state == XFRM_STATE_EXPIRED)
		goto expired;
	if (x->lft.hard_add_expires_seconds) {
		long tmo = x->lft.hard_add_expires_seconds +
			x->curlft.add_time - now;
		if (tmo <= 0)
			goto expired;
		if (tmo < next)
			next = tmo;
	}
	if (x->lft.hard_use_expires_seconds) {
		long tmo = x->lft.hard_use_expires_seconds +
			(x->curlft.use_time ? : now) - now;
		if (tmo <= 0)
			goto expired;
		if (tmo < next)
			next = tmo;
	}
	if (x->km.dying)
		goto resched;
	if (x->lft.soft_add_expires_seconds) {
		long tmo = x->lft.soft_add_expires_seconds +
			x->curlft.add_time - now;
		if (tmo <= 0)
			warn = 1;
		else if (tmo < next)
			next = tmo;
	}
	if (x->lft.soft_use_expires_seconds) {
		long tmo = x->lft.soft_use_expires_seconds +
			(x->curlft.use_time ? : now) - now;
		if (tmo <= 0)
			warn = 1;
		else if (tmo < next)
			next = tmo;
	}

	x->km.dying = warn;
	if (warn)
		FUNC4(x, 0, 0);
resched:
	if (next != LONG_MAX)
		FUNC6(&x->timer, jiffies + FUNC5(next));

	goto out;

expired:
	if (x->km.state == XFRM_STATE_ACQ && x->id.spi == 0) {
		x->km.state = XFRM_STATE_EXPIRED;
		FUNC9(&net->xfrm.km_waitq);
		next = 2;
		goto resched;
	}

	err = FUNC0(x);
	if (!err && x->id.spi)
		FUNC4(x, 1, 0);

	FUNC10(x, err ? 0 : 1,
				FUNC1(current),
				FUNC2(current), 0);

out:
	FUNC8(&x->lock);
}