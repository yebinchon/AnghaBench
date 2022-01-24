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
typedef  scalar_t__ u32 ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_err_soft; } ;
struct iphdr {int dummy; } ;
struct inet_sock {scalar_t__ pmtudisc; } ;
struct dst_entry {TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ icsk_pmtu_cookie; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* update_pmtu ) (struct dst_entry*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EMSGSIZE ; 
 scalar_t__ IP_PMTUDISC_DONT ; 
 scalar_t__ TCP_LISTEN ; 
 struct dst_entry* FUNC0 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dst_entry*) ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 struct inet_sock* FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct sock *sk, struct iphdr *iph, u32 mtu)
{
	struct dst_entry *dst;
	struct inet_sock *inet = FUNC3(sk);

	/* We are not interested in TCP_LISTEN and open_requests (SYN-ACKs
	 * send out by Linux are always <576bytes so they should go through
	 * unfragmented).
	 */
	if (sk->sk_state == TCP_LISTEN)
		return;

	/* We don't check in the destentry if pmtu discovery is forbidden
	 * on this route. We just assume that no packet_to_big packets
	 * are send back when pmtu discovery is not active.
	 * There is a small race when the user changes this flag in the
	 * route, but I think that's acceptable.
	 */
	if ((dst = FUNC0(sk, 0)) == NULL)
		return;

	dst->ops->update_pmtu(dst, mtu);

	/* Something is about to be wrong... Remember soft error
	 * for the case, if this connection will not able to recover.
	 */
	if (mtu < FUNC1(dst) && FUNC4(sk, dst))
		sk->sk_err_soft = EMSGSIZE;

	mtu = FUNC1(dst);

	if (inet->pmtudisc != IP_PMTUDISC_DONT &&
	    FUNC2(sk)->icsk_pmtu_cookie > mtu) {
		FUNC7(sk, mtu);

		/* Resend the TCP packet because it's
		 * clear that the old packet has been
		 * dropped. This is the new "fast" path mtu
		 * discovery.
		 */
		FUNC6(sk);
	} /* else let the usual retransmit timer handle it */
}