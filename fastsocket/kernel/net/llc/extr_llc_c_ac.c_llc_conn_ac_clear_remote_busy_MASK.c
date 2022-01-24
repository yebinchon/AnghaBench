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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  timer; } ;
struct llc_sock {TYPE_1__ busy_state_timer; scalar_t__ remote_busy_flag; } ;
struct llc_pdu_sn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct llc_pdu_sn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct llc_pdu_sn* FUNC3 (struct sk_buff*) ; 
 struct llc_sock* FUNC4 (struct sock*) ; 

int FUNC5(struct sock *sk, struct sk_buff *skb)
{
	struct llc_sock *llc = FUNC4(sk);

	if (llc->remote_busy_flag) {
		u8 nr;
		struct llc_pdu_sn *pdu = FUNC3(skb);

		llc->remote_busy_flag = 0;
		FUNC1(&llc->busy_state_timer.timer);
		nr = FUNC0(pdu);
		FUNC2(sk, nr, 0);
	}
	return 0;
}