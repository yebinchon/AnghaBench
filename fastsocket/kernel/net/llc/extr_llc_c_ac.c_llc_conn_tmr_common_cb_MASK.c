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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_conn_state_ev {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct llc_conn_state_ev* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct sock*) ; 

__attribute__((used)) static void FUNC6(unsigned long timeout_data, u8 type)
{
	struct sock *sk = (struct sock *)timeout_data;
	struct sk_buff *skb = FUNC0(0, GFP_ATOMIC);

	FUNC1(sk);
	if (skb) {
		struct llc_conn_state_ev *ev = FUNC3(skb);

		FUNC5(skb, sk);
		ev->type = type;
		FUNC4(sk, skb);
	}
	FUNC2(sk);
}