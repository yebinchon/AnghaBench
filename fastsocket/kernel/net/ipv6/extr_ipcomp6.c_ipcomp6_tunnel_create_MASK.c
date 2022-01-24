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
typedef  int /*<<< orphan*/  xfrm_address_t ;
struct TYPE_10__ {int /*<<< orphan*/  state; } ;
struct TYPE_8__ {int /*<<< orphan*/ * a6; } ;
struct TYPE_9__ {TYPE_3__ saddr; int /*<<< orphan*/  mode; int /*<<< orphan*/  family; } ;
struct TYPE_6__ {int /*<<< orphan*/ * a6; } ;
struct TYPE_7__ {TYPE_1__ daddr; int /*<<< orphan*/  spi; int /*<<< orphan*/  proto; } ;
struct xfrm_state {TYPE_5__ km; int /*<<< orphan*/  tunnel_users; int /*<<< orphan*/  mark; TYPE_4__ props; int /*<<< orphan*/  sel; TYPE_2__ id; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  XFRM_STATE_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct xfrm_state*) ; 
 struct xfrm_state* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xfrm_state*) ; 

__attribute__((used)) static struct xfrm_state *FUNC6(struct xfrm_state *x)
{
	struct xfrm_state *t = NULL;

	t = FUNC4(&init_net);
	if (!t)
		goto out;

	t->id.proto = IPPROTO_IPV6;
	t->id.spi = FUNC2((xfrm_address_t *)&x->props.saddr);
	if (!t->id.spi)
		goto error;

	FUNC1(t->id.daddr.a6, x->id.daddr.a6, sizeof(struct in6_addr));
	FUNC1(&t->sel, &x->sel, sizeof(t->sel));
	t->props.family = AF_INET6;
	t->props.mode = x->props.mode;
	FUNC1(t->props.saddr.a6, x->props.saddr.a6, sizeof(struct in6_addr));
	FUNC1(&t->mark, &x->mark, sizeof(t->mark));

	if (FUNC3(t))
		goto error;

	FUNC0(&t->tunnel_users, 1);

out:
	return t;

error:
	t->km.state = XFRM_STATE_DEAD;
	FUNC5(t);
	t = NULL;
	goto out;
}