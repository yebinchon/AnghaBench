#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sock {scalar_t__ sk_state; int sk_err; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {scalar_t__* data; } ;
struct ipv6_pinfo {scalar_t__ pmtudisc; scalar_t__ recverr; } ;
struct inet_sock {int /*<<< orphan*/  hdrincl; } ;
struct inet6_skb_parm {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ ICMPV6_PKT_TOOBIG ; 
 scalar_t__ IPV6_PMTUDISC_DO ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int FUNC0 (scalar_t__,scalar_t__,int*) ; 
 struct ipv6_pinfo* FUNC1 (struct sock*) ; 
 struct inet_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static void FUNC6(struct sock *sk, struct sk_buff *skb,
	       struct inet6_skb_parm *opt,
	       u8 type, u8 code, int offset, __be32 info)
{
	struct inet_sock *inet = FUNC2(sk);
	struct ipv6_pinfo *np = FUNC1(sk);
	int err;
	int harderr;

	/* Report error on raw socket, if:
	   1. User requested recverr.
	   2. Socket is connected (otherwise the error indication
	      is useless without recverr and error is hard.
	 */
	if (!np->recverr && sk->sk_state != TCP_ESTABLISHED)
		return;

	harderr = FUNC0(type, code, &err);
	if (type == ICMPV6_PKT_TOOBIG)
		harderr = (np->pmtudisc == IPV6_PMTUDISC_DO);

	if (np->recverr) {
		u8 *payload = skb->data;
		if (!inet->hdrincl)
			payload += offset;
		FUNC3(sk, skb, err, 0, FUNC4(info), payload);
	}

	if (np->recverr || harderr) {
		sk->sk_err = err;
		sk->sk_error_report(sk);
	}
}