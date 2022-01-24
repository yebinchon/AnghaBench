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
struct dccp_sock {int /*<<< orphan*/  dccps_r_ack_ratio; } ;
struct ccid2_hc_rx_sock {int /*<<< orphan*/  ccid2hcrx_data; } ;
struct TYPE_2__ {int dccpd_type; } ;

/* Variables and functions */
#define  DCCP_PKT_DATA 129 
#define  DCCP_PKT_DATAACK 128 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 struct ccid2_hc_rx_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct dccp_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk, struct sk_buff *skb)
{
	const struct dccp_sock *dp = FUNC3(sk);
	struct ccid2_hc_rx_sock *hcrx = FUNC1(sk);

	switch (FUNC0(skb)->dccpd_type) {
	case DCCP_PKT_DATA:
	case DCCP_PKT_DATAACK:
		hcrx->ccid2hcrx_data++;
		if (hcrx->ccid2hcrx_data >= dp->dccps_r_ack_ratio) {
			FUNC2(sk);
			hcrx->ccid2hcrx_data = 0;
		}
		break;
	}
}