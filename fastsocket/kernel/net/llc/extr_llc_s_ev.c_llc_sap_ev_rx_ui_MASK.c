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
struct sk_buff {int dummy; } ;
struct llc_sap_state_ev {scalar_t__ type; } ;
struct llc_sap {int dummy; } ;
struct llc_pdu_un {int dummy; } ;

/* Variables and functions */
 scalar_t__ LLC_1_PDU_CMD_UI ; 
 scalar_t__ FUNC0 (struct llc_pdu_un*) ; 
 scalar_t__ FUNC1 (struct llc_pdu_un*) ; 
 scalar_t__ LLC_SAP_EV_TYPE_PDU ; 
 scalar_t__ FUNC2 (struct llc_pdu_un*) ; 
 struct llc_pdu_un* FUNC3 (struct sk_buff*) ; 
 struct llc_sap_state_ev* FUNC4 (struct sk_buff*) ; 

int FUNC5(struct llc_sap *sap, struct sk_buff *skb)
{
	struct llc_sap_state_ev *ev = FUNC4(skb);
	struct llc_pdu_un *pdu = FUNC3(skb);

	return ev->type == LLC_SAP_EV_TYPE_PDU && FUNC0(pdu) &&
	       FUNC1(pdu) &&
	       FUNC2(pdu) == LLC_1_PDU_CMD_UI ? 0 : 1;
}