#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ state; } ;
struct xfrm_state {int /*<<< orphan*/  gclist; TYPE_1__ km; } ;
struct TYPE_4__ {int /*<<< orphan*/  state_gc_work; int /*<<< orphan*/  state_gc_list; } ;
struct net {TYPE_2__ xfrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFRM_STATE_DEAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfrm_state_gc_lock ; 
 struct net* FUNC5 (struct xfrm_state*) ; 

void FUNC6(struct xfrm_state *x)
{
	struct net *net = FUNC5(x);

	FUNC0(x->km.state != XFRM_STATE_DEAD);

	FUNC3(&xfrm_state_gc_lock);
	FUNC1(&x->gclist, &net->xfrm.state_gc_list);
	FUNC4(&xfrm_state_gc_lock);
	FUNC2(&net->xfrm.state_gc_work);
}