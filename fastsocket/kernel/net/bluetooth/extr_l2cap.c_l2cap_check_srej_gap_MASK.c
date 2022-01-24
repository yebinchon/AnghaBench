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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ tx_seq; int sar; } ;
struct TYPE_3__ {int buffer_seq_srej; } ;

/* Variables and functions */
 int L2CAP_CTRL_SAR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*,int) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sock *sk, u8 tx_seq)
{
	struct sk_buff *skb;
	u16 control = 0;

	while((skb = FUNC5(FUNC0(sk)))) {
		if (FUNC1(skb)->tx_seq != tx_seq)
			break;

		skb = FUNC4(FUNC0(sk));
		control |= FUNC1(skb)->sar << L2CAP_CTRL_SAR_SHIFT;
		FUNC3(sk, skb, control);
		FUNC2(sk)->buffer_seq_srej =
			(FUNC2(sk)->buffer_seq_srej + 1) % 64;
		tx_seq++;
	}
}