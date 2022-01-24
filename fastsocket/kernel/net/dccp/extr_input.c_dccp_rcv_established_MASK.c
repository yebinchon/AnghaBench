#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dccp_sock {int /*<<< orphan*/ * dccps_hc_rx_ackvec; } ;
struct dccp_hdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ dccpd_ack_seq; int /*<<< orphan*/  dccpd_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCCP_ACKVEC_STATE_RECEIVED ; 
 scalar_t__ DCCP_PKT_WITHOUT_ACK_SEQ ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sock*,struct sk_buff*,struct dccp_hdr const*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sock*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct dccp_sock* FUNC8 (struct sock*) ; 

int FUNC9(struct sock *sk, struct sk_buff *skb,
			 const struct dccp_hdr *dh, const unsigned len)
{
	struct dccp_sock *dp = FUNC8(sk);

	if (FUNC4(sk, skb))
		goto discard;

	if (FUNC7(sk, NULL, skb))
		return 1;

	if (FUNC0(skb)->dccpd_ack_seq != DCCP_PKT_WITHOUT_ACK_SEQ)
		FUNC6(sk, skb);

	if (dp->dccps_hc_rx_ackvec != NULL &&
	    FUNC3(dp->dccps_hc_rx_ackvec, sk,
			    FUNC0(skb)->dccpd_seq,
			    DCCP_ACKVEC_STATE_RECEIVED))
		goto discard;
	FUNC5(sk, skb);

	return FUNC1(sk, skb, dh, len);
discard:
	FUNC2(skb);
	return 0;
}