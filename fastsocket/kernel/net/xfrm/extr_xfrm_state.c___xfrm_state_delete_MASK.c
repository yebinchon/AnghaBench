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
struct TYPE_4__ {scalar_t__ spi; } ;
struct TYPE_6__ {scalar_t__ state; int /*<<< orphan*/  all; } ;
struct xfrm_state {int /*<<< orphan*/  byspi; TYPE_1__ id; int /*<<< orphan*/  bysrc; int /*<<< orphan*/  bydst; TYPE_3__ km; } ;
struct TYPE_5__ {int /*<<< orphan*/  state_num; } ;
struct net {TYPE_2__ xfrm; } ;

/* Variables and functions */
 int ESRCH ; 
 scalar_t__ XFRM_STATE_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfrm_state_lock ; 
 int /*<<< orphan*/  FUNC4 (struct xfrm_state*) ; 
 struct net* FUNC5 (struct xfrm_state*) ; 

int FUNC6(struct xfrm_state *x)
{
	struct net *net = FUNC5(x);
	int err = -ESRCH;

	if (x->km.state != XFRM_STATE_DEAD) {
		x->km.state = XFRM_STATE_DEAD;
		FUNC2(&xfrm_state_lock);
		FUNC1(&x->km.all);
		FUNC0(&x->bydst);
		FUNC0(&x->bysrc);
		if (x->id.spi)
			FUNC0(&x->byspi);
		net->xfrm.state_num--;
		FUNC3(&xfrm_state_lock);

		/* All xfrm_state objects are created by xfrm_state_alloc.
		 * The xfrm_state_alloc call gives a reference, and that
		 * is what we are dropping here.
		 */
		FUNC4(x);
		err = 0;
	}

	return err;
}