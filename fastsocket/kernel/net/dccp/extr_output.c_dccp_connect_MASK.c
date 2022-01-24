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
struct sock {TYPE_1__* sk_prot; int /*<<< orphan*/  sk_allocation; } ;
struct sk_buff {int dummy; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_rto; } ;
struct TYPE_4__ {int /*<<< orphan*/  dccpd_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  max_header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCCP_MIB_ACTIVEOPENS ; 
 int /*<<< orphan*/  DCCP_PKT_REQUEST ; 
 int /*<<< orphan*/  DCCP_RTO_MAX ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int ENOBUFS ; 
 int EPROTO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ICSK_TIME_RETRANS ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(struct sock *sk)
{
	struct sk_buff *skb;
	struct inet_connection_sock *icsk = FUNC8(sk);

	/* do not connect if feature negotiation setup fails */
	if (FUNC4(FUNC5(sk)))
		return -EPROTO;

	FUNC3(sk);

	skb = FUNC2(sk->sk_prot->max_header, sk->sk_allocation);
	if (FUNC12(skb == NULL))
		return -ENOBUFS;

	/* Reserve space for headers. */
	FUNC11(skb, sk->sk_prot->max_header);

	FUNC1(skb)->dccpd_type = DCCP_PKT_REQUEST;

	FUNC6(sk, skb);
	FUNC7(sk, FUNC10(skb, GFP_KERNEL));
	FUNC0(DCCP_MIB_ACTIVEOPENS);

	/* Timer for repeating the REQUEST until an answer. */
	FUNC9(sk, ICSK_TIME_RETRANS,
				  icsk->icsk_rto, DCCP_RTO_MAX);
	return 0;
}