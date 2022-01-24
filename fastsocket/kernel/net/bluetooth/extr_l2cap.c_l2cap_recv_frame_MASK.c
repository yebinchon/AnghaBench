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
struct l2cap_hdr {int /*<<< orphan*/  len; int /*<<< orphan*/  cid; } ;
struct l2cap_conn {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
#define  L2CAP_CID_CONN_LESS 129 
#define  L2CAP_CID_SIGNALING 128 
 int L2CAP_HDR_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_conn*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_conn*,scalar_t__,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_conn*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC8(struct l2cap_conn *conn, struct sk_buff *skb)
{
	struct l2cap_hdr *lh = (void *) skb->data;
	u16 cid, len;
	__le16 psm;

	FUNC7(skb, L2CAP_HDR_SIZE);
	cid = FUNC1(lh->cid);
	len = FUNC1(lh->len);

	if (len != skb->len) {
		FUNC3(skb);
		return;
	}

	FUNC0("len %d, cid 0x%4.4x", len, cid);

	switch (cid) {
	case L2CAP_CID_SIGNALING:
		FUNC6(conn, skb);
		break;

	case L2CAP_CID_CONN_LESS:
		psm = FUNC2(skb->data);
		FUNC7(skb, 2);
		FUNC4(conn, psm, skb);
		break;

	default:
		FUNC5(conn, cid, skb);
		break;
	}
}