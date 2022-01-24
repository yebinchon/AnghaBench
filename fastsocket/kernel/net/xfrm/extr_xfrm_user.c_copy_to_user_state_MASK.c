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
struct xfrm_usersa_info {int /*<<< orphan*/  seq; int /*<<< orphan*/  flags; int /*<<< orphan*/  family; int /*<<< orphan*/  reqid; int /*<<< orphan*/  replay_window; int /*<<< orphan*/  mode; int /*<<< orphan*/  saddr; int /*<<< orphan*/  stats; int /*<<< orphan*/  curlft; int /*<<< orphan*/  lft; int /*<<< orphan*/  sel; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  seq; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  family; int /*<<< orphan*/  reqid; int /*<<< orphan*/  replay_window; int /*<<< orphan*/  mode; int /*<<< orphan*/  saddr; } ;
struct xfrm_state {TYPE_2__ km; TYPE_1__ props; int /*<<< orphan*/  stats; int /*<<< orphan*/  curlft; int /*<<< orphan*/  lft; int /*<<< orphan*/  sel; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_usersa_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct xfrm_state *x, struct xfrm_usersa_info *p)
{
	FUNC1(p, 0, sizeof(*p));
	FUNC0(&p->id, &x->id, sizeof(p->id));
	FUNC0(&p->sel, &x->sel, sizeof(p->sel));
	FUNC0(&p->lft, &x->lft, sizeof(p->lft));
	FUNC0(&p->curlft, &x->curlft, sizeof(p->curlft));
	FUNC0(&p->stats, &x->stats, sizeof(p->stats));
	FUNC0(&p->saddr, &x->props.saddr, sizeof(p->saddr));
	p->mode = x->props.mode;
	p->replay_window = x->props.replay_window;
	p->reqid = x->props.reqid;
	p->family = x->props.family;
	p->flags = x->props.flags;
	p->seq = x->km.seq;
}