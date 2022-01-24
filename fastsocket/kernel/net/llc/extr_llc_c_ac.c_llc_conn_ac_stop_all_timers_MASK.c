#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  timer; } ;
struct TYPE_8__ {int /*<<< orphan*/  timer; } ;
struct TYPE_7__ {int /*<<< orphan*/  timer; } ;
struct TYPE_6__ {int /*<<< orphan*/  timer; } ;
struct llc_sock {scalar_t__ ack_pf; scalar_t__ ack_must_be_send; TYPE_1__ busy_state_timer; TYPE_4__ rej_sent_timer; TYPE_3__ ack_timer; TYPE_2__ pf_cycle_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct llc_sock* FUNC1 (struct sock*) ; 

int FUNC2(struct sock *sk, struct sk_buff *skb)
{
	struct llc_sock *llc = FUNC1(sk);

	FUNC0(&llc->pf_cycle_timer.timer);
	FUNC0(&llc->ack_timer.timer);
	FUNC0(&llc->rej_sent_timer.timer);
	FUNC0(&llc->busy_state_timer.timer);
	llc->ack_must_be_send = 0;
	llc->ack_pf = 0;
	return 0;
}