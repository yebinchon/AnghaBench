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
typedef  scalar_t__ u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_pdu_sn {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct llc_pdu_sn*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__*) ; 
 struct llc_pdu_sn* FUNC4 (struct sk_buff*) ; 

int FUNC5(struct sock *sk, struct sk_buff *skb)
{
	struct llc_pdu_sn *pdu = FUNC4(skb);

	if (FUNC0(pdu)) {
		u8 f_bit;

		FUNC3(skb, &f_bit);
		if (f_bit) {
			FUNC2(sk, 0);
			FUNC1(sk, skb);
		}
	}
	return 0;
}