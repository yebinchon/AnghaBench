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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_pdu_sn {int dummy; } ;
struct TYPE_2__ {scalar_t__ vR; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct llc_pdu_sn const*) ; 
 scalar_t__ FUNC1 (struct llc_pdu_sn const*) ; 
 scalar_t__ FUNC2 (struct llc_pdu_sn const*) ; 
 scalar_t__ FUNC3 (struct llc_pdu_sn const*) ; 
 struct llc_pdu_sn* FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 

int FUNC6(struct sock *sk, struct sk_buff *skb)
{
	const struct llc_pdu_sn *pdu = FUNC4(skb);

	return FUNC2(pdu) && FUNC3(pdu) &&
	       FUNC1(pdu) &&
	       FUNC0(pdu) == FUNC5(sk)->vR ? 0 : 1;
}