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
typedef  int /*<<< orphan*/  u64 ;
struct sock {int dummy; } ;
struct dccp_sock {struct ccid* dccps_hc_tx_ccid; struct ccid* dccps_hc_rx_ccid; } ;
struct ccid {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct ccid*,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccid*,struct sock*) ; 
 struct ccid* FUNC2 (int /*<<< orphan*/ ,struct sock*,int) ; 
 struct dccp_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, u64 ccid, bool rx)
{
	struct dccp_sock *dp = FUNC3(sk);
	struct ccid *new_ccid = FUNC2(ccid, sk, rx);

	if (new_ccid == NULL)
		return -ENOMEM;

	if (rx) {
		FUNC0(dp->dccps_hc_rx_ccid, sk);
		dp->dccps_hc_rx_ccid = new_ccid;
	} else {
		FUNC1(dp->dccps_hc_tx_ccid, sk);
		dp->dccps_hc_tx_ccid = new_ccid;
	}
	return 0;
}