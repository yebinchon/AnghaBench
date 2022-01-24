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
typedef  int u16 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_pdu_sn {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct llc_pdu_sn const*) ; 
 scalar_t__ FUNC1 (struct llc_pdu_sn const*) ; 
 scalar_t__ FUNC2 (struct llc_pdu_sn const*) ; 
 scalar_t__ FUNC3 (struct llc_pdu_sn const*) ; 
 scalar_t__ FUNC4 (struct llc_pdu_sn const*) ; 
 scalar_t__ FUNC5 (struct llc_pdu_sn const*) ; 
 struct llc_pdu_sn* FUNC6 (struct sk_buff*) ; 

int FUNC7(struct sock *sk, struct sk_buff *skb)
{
	u16 rc = 1;
	const struct llc_pdu_sn *pdu = FUNC6(skb);

	if (FUNC1(pdu)) {
		if (FUNC2(pdu) || FUNC3(pdu)) {
			if (FUNC0(pdu))
				rc = 0;
		} else if (FUNC4(pdu) && FUNC5(pdu))
			rc = 0;
	}
	return rc;
}