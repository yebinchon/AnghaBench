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
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct dccp_sock {scalar_t__ dccps_l_ack_ratio; } ;
struct TYPE_2__ {int /*<<< orphan*/  ccid2hctx_cwnd; } ;

/* Variables and functions */
 scalar_t__ DCCPF_ACK_RATIO_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 struct dccp_sock* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, u32 val)
{
	struct dccp_sock *dp = FUNC4(sk);
	u32 max_ratio = FUNC1(FUNC2(sk)->ccid2hctx_cwnd, 2);

	/*
	 * Ensure that Ack Ratio does not exceed ceil(cwnd/2), which is (2) from
	 * RFC 4341, 6.1.2. We ignore the statement that Ack Ratio 2 is always
	 * acceptable since this causes starvation/deadlock whenever cwnd < 2.
	 * The same problem arises when Ack Ratio is 0 (ie. Ack Ratio disabled).
	 */
	if (val == 0 || val > max_ratio) {
		FUNC0("Limiting Ack Ratio (%u) to %u\n", val, max_ratio);
		val = max_ratio;
	}
	if (val > DCCPF_ACK_RATIO_MAX)
		val = DCCPF_ACK_RATIO_MAX;

	if (val == dp->dccps_l_ack_ratio)
		return;

	FUNC3("changing local ack ratio to %u\n", val);
	dp->dccps_l_ack_ratio = val;
}