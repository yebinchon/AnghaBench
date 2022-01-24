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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ tx_seq; } ;
struct TYPE_3__ {scalar_t__ expected_ack_seq; int /*<<< orphan*/  retrans_timer; int /*<<< orphan*/  unacked_frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	struct sk_buff *skb;

	while ((skb = FUNC6(FUNC0(sk)))) {
		if (FUNC1(skb)->tx_seq == FUNC4(sk)->expected_ack_seq)
			break;

		skb = FUNC5(FUNC0(sk));
		FUNC3(skb);

		FUNC4(sk)->unacked_frames--;
	}

	if (!FUNC4(sk)->unacked_frames)
		FUNC2(&FUNC4(sk)->retrans_timer);

	return;
}