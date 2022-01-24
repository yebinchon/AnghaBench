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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct l2cap_pinfo {scalar_t__ fcs; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ L2CAP_FCS_CRC16 ; 
 int L2CAP_HDR_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct l2cap_pinfo *pi,  struct sk_buff *skb)
{
	u16 our_fcs, rcv_fcs;
	int hdr_size = L2CAP_HDR_SIZE + 2;

	if (pi->fcs == L2CAP_FCS_CRC16) {
		FUNC2(skb, skb->len - 2);
		rcv_fcs = FUNC1(skb->data + skb->len);
		our_fcs = FUNC0(0, skb->data - hdr_size, skb->len + hdr_size);

		if (our_fcs != rcv_fcs)
			return -EINVAL;
	}
	return 0;
}