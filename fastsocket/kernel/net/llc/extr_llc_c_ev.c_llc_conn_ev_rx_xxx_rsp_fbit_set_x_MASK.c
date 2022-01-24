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
struct llc_pdu_un {int dummy; } ;

/* Variables and functions */
#define  LLC_2_PDU_RSP_DM 130 
#define  LLC_2_PDU_RSP_FRMR 129 
#define  LLC_2_PDU_RSP_UA 128 
 scalar_t__ FUNC0 (struct llc_pdu_un const*) ; 
 scalar_t__ FUNC1 (struct llc_pdu_un const*) ; 
 scalar_t__ FUNC2 (struct llc_pdu_un const*) ; 
 scalar_t__ FUNC3 (struct llc_pdu_un const*) ; 
 int FUNC4 (struct llc_pdu_un const*) ; 
 struct llc_pdu_un* FUNC5 (struct sk_buff*) ; 

int FUNC6(struct sock *sk, struct sk_buff *skb)
{
	u16 rc = 1;
	const struct llc_pdu_un *pdu = FUNC5(skb);

	if (FUNC0(pdu)) {
		if (FUNC1(pdu) || FUNC2(pdu))
			rc = 0;
		else if (FUNC3(pdu))
			switch (FUNC4(pdu)) {
			case LLC_2_PDU_RSP_UA:
			case LLC_2_PDU_RSP_DM:
			case LLC_2_PDU_RSP_FRMR:
				rc = 0;
				break;
			}
	}

	return rc;
}