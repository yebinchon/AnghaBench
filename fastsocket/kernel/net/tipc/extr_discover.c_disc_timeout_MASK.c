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
struct link_req {int timer_intv; TYPE_3__* bearer; int /*<<< orphan*/  timer; int /*<<< orphan*/  dest; int /*<<< orphan*/  buf; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {scalar_t__ count; } ;
struct TYPE_7__ {TYPE_4__ publ; TYPE_2__ nodes; TYPE_1__* media; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* send_msg ) (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int TIPC_LINK_REQ_FAST ; 
 int TIPC_LINK_REQ_SLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct link_req *req)
{
	FUNC1(&req->bearer->publ.lock);

	req->bearer->media->send_msg(req->buf, &req->bearer->publ, &req->dest);

	if ((req->timer_intv == TIPC_LINK_REQ_SLOW) ||
	    (req->timer_intv == TIPC_LINK_REQ_FAST)) {
		/* leave timer interval "as is" if already at a "normal" rate */
	} else {
		req->timer_intv *= 2;
		if (req->timer_intv > TIPC_LINK_REQ_FAST)
			req->timer_intv = TIPC_LINK_REQ_FAST;
		if ((req->timer_intv == TIPC_LINK_REQ_FAST) &&
		    (req->bearer->nodes.count))
			req->timer_intv = TIPC_LINK_REQ_SLOW;
	}
	FUNC0(&req->timer, req->timer_intv);

	FUNC2(&req->bearer->publ.lock);
}