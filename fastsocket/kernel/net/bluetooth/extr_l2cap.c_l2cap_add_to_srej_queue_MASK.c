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
typedef  scalar_t__ u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ tx_seq; scalar_t__ sar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, struct sk_buff *skb, u8 tx_seq, u8 sar)
{
	struct sk_buff *next_skb;

	FUNC3(skb)->tx_seq = tx_seq;
	FUNC3(skb)->sar = sar;

	next_skb = FUNC4(FUNC0(sk));
	if (!next_skb) {
		FUNC2(FUNC0(sk), skb);
		return;
	}

	do {
		if (FUNC3(next_skb)->tx_seq > tx_seq) {
			FUNC1(FUNC0(sk), next_skb, skb);
			return;
		}

		if (FUNC5(FUNC0(sk), next_skb))
			break;

	} while((next_skb = FUNC6(FUNC0(sk), next_skb)));

	FUNC2(FUNC0(sk), skb);
}