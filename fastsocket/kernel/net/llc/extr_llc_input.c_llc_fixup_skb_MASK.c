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
typedef  int u8 ;
struct sk_buff {int transport_header; scalar_t__ protocol; scalar_t__ data; } ;
struct llc_pdu_un {int ctrl_1; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  h_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int LLC_PDU_TYPE_MASK ; 
 int LLC_PDU_TYPE_U ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int FUNC4 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static inline int FUNC8(struct sk_buff *skb)
{
	u8 llc_len = 2;
	struct llc_pdu_un *pdu;

	if (FUNC7(!FUNC3(skb, sizeof(*pdu))))
		return 0;

	pdu = (struct llc_pdu_un *)skb->data;
	if ((pdu->ctrl_1 & LLC_PDU_TYPE_MASK) == LLC_PDU_TYPE_U)
		llc_len = 1;
	llc_len += 2;

	if (FUNC7(!FUNC3(skb, llc_len)))
		return 0;

	skb->transport_header += llc_len;
	FUNC5(skb, llc_len);
	if (skb->protocol == FUNC1(ETH_P_802_2)) {
		__be16 pdulen = FUNC0(skb)->h_proto;
		s32 data_size = FUNC2(pdulen) - llc_len;

		if (data_size < 0 ||
		    ((FUNC6(skb) -
		      (u8 *)pdu) - llc_len) < data_size)
			return 0;
		if (FUNC7(FUNC4(skb, data_size)))
			return 0;
	}
	return 1;
}