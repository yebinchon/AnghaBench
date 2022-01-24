#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned long add_time; scalar_t__ use_time; } ;
struct TYPE_5__ {long hard_add_expires_seconds; long hard_use_expires_seconds; long soft_add_expires_seconds; long soft_use_expires_seconds; } ;
struct TYPE_4__ {int /*<<< orphan*/  dead; } ;
struct xfrm_policy {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; TYPE_3__ curlft; TYPE_2__ lft; int /*<<< orphan*/  index; TYPE_1__ walk; } ;

/* Variables and functions */
 long LONG_MAX ; 
 long XFRM_KM_TIMEOUT ; 
 unsigned long FUNC0 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_policy*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfrm_policy*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(unsigned long data)
{
	struct xfrm_policy *xp = (struct xfrm_policy*)data;
	unsigned long now = FUNC0();
	long next = LONG_MAX;
	int warn = 0;
	int dir;

	FUNC4(&xp->lock);

	if (FUNC6(xp->walk.dead))
		goto out;

	dir = FUNC10(xp->index);

	if (xp->lft.hard_add_expires_seconds) {
		long tmo = xp->lft.hard_add_expires_seconds +
			xp->curlft.add_time - now;
		if (tmo <= 0)
			goto expired;
		if (tmo < next)
			next = tmo;
	}
	if (xp->lft.hard_use_expires_seconds) {
		long tmo = xp->lft.hard_use_expires_seconds +
			(xp->curlft.use_time ? : xp->curlft.add_time) - now;
		if (tmo <= 0)
			goto expired;
		if (tmo < next)
			next = tmo;
	}
	if (xp->lft.soft_add_expires_seconds) {
		long tmo = xp->lft.soft_add_expires_seconds +
			xp->curlft.add_time - now;
		if (tmo <= 0) {
			warn = 1;
			tmo = XFRM_KM_TIMEOUT;
		}
		if (tmo < next)
			next = tmo;
	}
	if (xp->lft.soft_use_expires_seconds) {
		long tmo = xp->lft.soft_use_expires_seconds +
			(xp->curlft.use_time ? : xp->curlft.add_time) - now;
		if (tmo <= 0) {
			warn = 1;
			tmo = XFRM_KM_TIMEOUT;
		}
		if (tmo < next)
			next = tmo;
	}

	if (warn)
		FUNC1(xp, dir, 0, 0);
	if (next != LONG_MAX &&
	    !FUNC3(&xp->timer, jiffies + FUNC2(next)))
		FUNC7(xp);

out:
	FUNC5(&xp->lock);
	FUNC8(xp);
	return;

expired:
	FUNC5(&xp->lock);
	if (!FUNC9(xp, dir))
		FUNC1(xp, dir, 1, 0);
	FUNC8(xp);
}