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
struct llc_pdu_sn {int ctrl_1; } ;

/* Variables and functions */
#define  LLC_1_PDU_CMD_TEST 135 
#define  LLC_1_PDU_CMD_UI 134 
#define  LLC_1_PDU_CMD_XID 133 
#define  LLC_2_PDU_CMD_DISC 132 
#define  LLC_2_PDU_CMD_SABME 131 
#define  LLC_2_PDU_RSP_DM 130 
#define  LLC_2_PDU_RSP_FRMR 129 
#define  LLC_2_PDU_RSP_UA 128 
 int LLC_DEST_CONN ; 
 int LLC_DEST_INVALID ; 
 int LLC_DEST_SAP ; 
 int LLC_PDU_TYPE_MASK ; 
 int LLC_PDU_TYPE_U ; 
 int FUNC0 (struct llc_pdu_sn*) ; 
 struct llc_pdu_sn* FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static __inline__ int FUNC2(struct sk_buff *skb)
{
	int type = LLC_DEST_CONN; /* I-PDU or S-PDU type */
	struct llc_pdu_sn *pdu = FUNC1(skb);

	if ((pdu->ctrl_1 & LLC_PDU_TYPE_MASK) != LLC_PDU_TYPE_U)
		goto out;
	switch (FUNC0(pdu)) {
	case LLC_1_PDU_CMD_XID:
	case LLC_1_PDU_CMD_UI:
	case LLC_1_PDU_CMD_TEST:
		type = LLC_DEST_SAP;
		break;
	case LLC_2_PDU_CMD_SABME:
	case LLC_2_PDU_CMD_DISC:
	case LLC_2_PDU_RSP_UA:
	case LLC_2_PDU_RSP_DM:
	case LLC_2_PDU_RSP_FRMR:
		break;
	default:
		type = LLC_DEST_INVALID;
		break;
	}
out:
	return type;
}