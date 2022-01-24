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
typedef  scalar_t__ u64 ;
struct sock {int dummy; } ;
struct dccp_sock {int /*<<< orphan*/ * dccps_hc_rx_ackvec; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dccp_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct sock *sk, u64 enable, bool rx)
{
	struct dccp_sock *dp = FUNC2(sk);

	if (rx) {
		if (enable && dp->dccps_hc_rx_ackvec == NULL) {
			dp->dccps_hc_rx_ackvec = FUNC0(FUNC3());
			if (dp->dccps_hc_rx_ackvec == NULL)
				return -ENOMEM;
		} else if (!enable) {
			FUNC1(dp->dccps_hc_rx_ackvec);
			dp->dccps_hc_rx_ackvec = NULL;
		}
	}
	return 0;
}