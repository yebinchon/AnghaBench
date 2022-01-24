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
struct TYPE_6__ {void* hard_packet_limit; void* hard_byte_limit; void* soft_packet_limit; void* soft_byte_limit; } ;
struct TYPE_5__ {int /*<<< orphan*/  add_time; } ;
struct TYPE_4__ {int /*<<< orphan*/  all; } ;
struct xfrm_state {int /*<<< orphan*/  lock; int /*<<< orphan*/ * inner_mode_iaf; int /*<<< orphan*/ * inner_mode; scalar_t__ replay_maxdiff; scalar_t__ replay_maxage; TYPE_3__ lft; TYPE_2__ curlft; int /*<<< orphan*/  rtimer; int /*<<< orphan*/  timer; int /*<<< orphan*/  byspi; int /*<<< orphan*/  bysrc; int /*<<< orphan*/  bydst; TYPE_1__ km; int /*<<< orphan*/  tunnel_users; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  xs_net; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* XFRM_INF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct xfrm_state* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct net*) ; 
 int /*<<< orphan*/  xfrm_replay_timer_handler ; 
 int /*<<< orphan*/  xfrm_timer_handler ; 

struct xfrm_state *FUNC8(struct net *net)
{
	struct xfrm_state *x;

	x = FUNC4(sizeof(struct xfrm_state), GFP_ATOMIC);

	if (x) {
		FUNC7(&x->xs_net, net);
		FUNC2(&x->refcnt, 1);
		FUNC2(&x->tunnel_users, 0);
		FUNC1(&x->km.all);
		FUNC0(&x->bydst);
		FUNC0(&x->bysrc);
		FUNC0(&x->byspi);
		FUNC5(&x->timer, xfrm_timer_handler, (unsigned long)x);
		FUNC5(&x->rtimer, xfrm_replay_timer_handler,
				(unsigned long)x);
		x->curlft.add_time = FUNC3();
		x->lft.soft_byte_limit = XFRM_INF;
		x->lft.soft_packet_limit = XFRM_INF;
		x->lft.hard_byte_limit = XFRM_INF;
		x->lft.hard_packet_limit = XFRM_INF;
		x->replay_maxage = 0;
		x->replay_maxdiff = 0;
		x->inner_mode = NULL;
		x->inner_mode_iaf = NULL;
		FUNC6(&x->lock);
	}
	return x;
}