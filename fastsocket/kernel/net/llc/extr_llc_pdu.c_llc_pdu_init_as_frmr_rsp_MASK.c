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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct llc_pdu_sn {int ctrl_1; int /*<<< orphan*/  ctrl_2; } ;
struct llc_frmr_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct llc_frmr_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct llc_frmr_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct llc_frmr_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct llc_frmr_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct llc_frmr_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct llc_frmr_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct llc_frmr_info*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct llc_frmr_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct llc_frmr_info*,int) ; 
 int LLC_2_PDU_RSP_FRMR ; 
 int LLC_PDU_TYPE_U ; 
 int LLC_U_PF_BIT_MASK ; 
 int FUNC9 (struct llc_pdu_sn*) ; 
 struct llc_pdu_sn* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 

void FUNC12(struct sk_buff *skb, struct llc_pdu_sn *prev_pdu,
			      u8 f_bit, u8 vs, u8 vr, u8 vzyxw)
{
	struct llc_frmr_info *frmr_info;
	u8 prev_pf = 0;
	u8 *ctrl;
	struct llc_pdu_sn *pdu = FUNC10(skb);

	pdu->ctrl_1  = LLC_PDU_TYPE_U;
	pdu->ctrl_1 |= LLC_2_PDU_RSP_FRMR;
	pdu->ctrl_1 |= ((f_bit & 1) << 4) & LLC_U_PF_BIT_MASK;

	frmr_info = (struct llc_frmr_info *)&pdu->ctrl_2;
	ctrl = (u8 *)&prev_pdu->ctrl_1;
	FUNC6(frmr_info,ctrl);
	FUNC8(frmr_info, vs);
	FUNC7(frmr_info, vr);
	prev_pf = FUNC9(prev_pdu);
	FUNC0(frmr_info, prev_pf);
	FUNC1(frmr_info, vzyxw);
	FUNC2(frmr_info, vzyxw);
	FUNC3(frmr_info, vzyxw);
	FUNC4(frmr_info, vzyxw);
	FUNC5(frmr_info, vzyxw);
	FUNC11(skb, sizeof(struct llc_frmr_info));
}