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
typedef  int /*<<< orphan*/  xfrm_address_t ;
struct TYPE_5__ {int /*<<< orphan*/  daddr; } ;
struct xfrm_tmpl {int /*<<< orphan*/  reqid; int /*<<< orphan*/  mode; int /*<<< orphan*/  saddr; TYPE_2__ id; } ;
struct TYPE_6__ {void* family; int /*<<< orphan*/  reqid; int /*<<< orphan*/  mode; int /*<<< orphan*/  saddr; } ;
struct TYPE_4__ {int prefixlen_d; int prefixlen_s; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  proto; void* family; void* sport_mask; int /*<<< orphan*/  sport; void* dport_mask; int /*<<< orphan*/  dport; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct xfrm_state {TYPE_3__ props; TYPE_2__ id; TYPE_1__ sel; } ;
struct in6_addr {int dummy; } ;
struct flowi {int /*<<< orphan*/  oif; int /*<<< orphan*/  proto; int /*<<< orphan*/  fl6_src; int /*<<< orphan*/  fl6_dst; } ;

/* Variables and functions */
 void* AF_INET6 ; 
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct flowi*) ; 
 int /*<<< orphan*/  FUNC5 (struct flowi*) ; 

__attribute__((used)) static void
FUNC6(struct xfrm_state *x, struct flowi *fl,
		     struct xfrm_tmpl *tmpl,
		     xfrm_address_t *daddr, xfrm_address_t *saddr)
{
	/* Initialize temporary selector matching only
	 * to current session. */
	FUNC2((struct in6_addr *)&x->sel.daddr, &fl->fl6_dst);
	FUNC2((struct in6_addr *)&x->sel.saddr, &fl->fl6_src);
	x->sel.dport = FUNC4(fl);
	x->sel.dport_mask = FUNC0(0xffff);
	x->sel.sport = FUNC5(fl);
	x->sel.sport_mask = FUNC0(0xffff);
	x->sel.family = AF_INET6;
	x->sel.prefixlen_d = 128;
	x->sel.prefixlen_s = 128;
	x->sel.proto = fl->proto;
	x->sel.ifindex = fl->oif;
	x->id = tmpl->id;
	if (FUNC1((struct in6_addr*)&x->id.daddr))
		FUNC3(&x->id.daddr, daddr, sizeof(x->sel.daddr));
	FUNC3(&x->props.saddr, &tmpl->saddr, sizeof(x->props.saddr));
	if (FUNC1((struct in6_addr*)&x->props.saddr))
		FUNC3(&x->props.saddr, saddr, sizeof(x->props.saddr));
	x->props.mode = tmpl->mode;
	x->props.reqid = tmpl->reqid;
	x->props.family = AF_INET6;
}