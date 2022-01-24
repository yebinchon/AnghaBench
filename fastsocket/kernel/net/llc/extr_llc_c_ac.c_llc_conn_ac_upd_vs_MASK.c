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
struct llc_pdu_sn {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  X; int /*<<< orphan*/  vS; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct llc_pdu_sn*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*) ; 
 struct llc_pdu_sn* FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 

int FUNC5(struct sock *sk, struct sk_buff *skb)
{
	struct llc_pdu_sn *pdu = FUNC3(skb);
	u8 nr = FUNC0(pdu);

	if (FUNC1(FUNC4(sk)->vS, nr, FUNC4(sk)->X))
		FUNC2(sk, skb);
	return 0;
}