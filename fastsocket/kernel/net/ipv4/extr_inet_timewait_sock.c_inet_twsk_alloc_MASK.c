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
struct sock {TYPE_2__* sk_prot_creator; int /*<<< orphan*/  sk_hash; int /*<<< orphan*/  sk_reuse; int /*<<< orphan*/  sk_family; int /*<<< orphan*/  sk_bound_dev_if; } ;
struct inet_timewait_sock {int tw_substate; TYPE_2__* tw_prot; int /*<<< orphan*/  tw_refcnt; int /*<<< orphan*/  tw_transparent; scalar_t__ tw_ipv6only; int /*<<< orphan*/  tw_hash; int /*<<< orphan*/  tw_reuse; int /*<<< orphan*/  tw_family; int /*<<< orphan*/  tw_dport; int /*<<< orphan*/  tw_sport; int /*<<< orphan*/  tw_state; int /*<<< orphan*/  tw_num; int /*<<< orphan*/  tw_bound_dev_if; int /*<<< orphan*/  tw_rcv_saddr; int /*<<< orphan*/  tw_daddr; } ;
struct inet_sock {int /*<<< orphan*/  transparent; int /*<<< orphan*/  dport; int /*<<< orphan*/  sport; int /*<<< orphan*/  num; int /*<<< orphan*/  rcv_saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; TYPE_1__* twsk_prot; } ;
struct TYPE_3__ {int /*<<< orphan*/  twsk_slab; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  TCP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC3 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC4 (struct inet_timewait_sock*) ; 
 struct inet_timewait_sock* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inet_timewait_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC8 (struct inet_timewait_sock*,int /*<<< orphan*/ ) ; 

struct inet_timewait_sock *FUNC9(const struct sock *sk, const int state)
{
	struct inet_timewait_sock *tw =
		FUNC5(sk->sk_prot_creator->twsk_prot->twsk_slab,
				 GFP_ATOMIC);
	if (tw != NULL) {
		const struct inet_sock *inet = FUNC3(sk);

		FUNC6(tw, flags);

		/* Give us an identity. */
		tw->tw_daddr	    = inet->daddr;
		tw->tw_rcv_saddr    = inet->rcv_saddr;
		tw->tw_bound_dev_if = sk->sk_bound_dev_if;
		tw->tw_num	    = inet->num;
		tw->tw_state	    = TCP_TIME_WAIT;
		tw->tw_substate	    = state;
		tw->tw_sport	    = inet->sport;
		tw->tw_dport	    = inet->dport;
		tw->tw_family	    = sk->sk_family;
		tw->tw_reuse	    = sk->sk_reuse;
		tw->tw_hash	    = sk->sk_hash;
		tw->tw_ipv6only	    = 0;
		tw->tw_transparent  = inet->transparent;
		tw->tw_prot	    = sk->sk_prot_creator;
		FUNC8(tw, FUNC2(FUNC7(sk)));
		FUNC1(&tw->tw_refcnt, 1);
		FUNC4(tw);
		FUNC0(tw->tw_prot->owner);
	}

	return tw;
}