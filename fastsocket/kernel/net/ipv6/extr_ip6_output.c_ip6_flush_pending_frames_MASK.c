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
struct sock {int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

void FUNC9(struct sock *sk)
{
	struct sk_buff *skb;

	while ((skb = FUNC1(&sk->sk_write_queue)) != NULL) {
		if (FUNC7(skb))
			FUNC0(FUNC8(sk), FUNC5(FUNC7(skb)),
				      IPSTATS_MIB_OUTDISCARDS);
		FUNC6(skb);
	}

	FUNC4(FUNC3(sk), FUNC2(sk));
}