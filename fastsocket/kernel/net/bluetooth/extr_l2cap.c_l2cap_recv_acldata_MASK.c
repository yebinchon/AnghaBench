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
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_hdr {int /*<<< orphan*/  len; } ;
struct l2cap_conn {int rx_len; struct sk_buff* rx_skb; } ;
struct hci_conn {struct l2cap_conn* l2cap_data; } ;

/* Variables and functions */
 int ACL_START ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  ECOMM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int L2CAP_HDR_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct l2cap_conn* FUNC5 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_conn*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC10(struct hci_conn *hcon, struct sk_buff *skb, u16 flags)
{
	struct l2cap_conn *conn = hcon->l2cap_data;

	if (!conn && !(conn = FUNC5(hcon, 0)))
		goto drop;

	FUNC0("conn %p len %d flags 0x%x", conn, skb->len, flags);

	if (flags & ACL_START) {
		struct l2cap_hdr *hdr;
		int len;

		if (conn->rx_len) {
			FUNC1("Unexpected start frame (len %d)", skb->len);
			FUNC4(conn->rx_skb);
			conn->rx_skb = NULL;
			conn->rx_len = 0;
			FUNC6(conn, ECOMM);
		}

		if (skb->len < 2) {
			FUNC1("Frame is too short (len %d)", skb->len);
			FUNC6(conn, ECOMM);
			goto drop;
		}

		hdr = (struct l2cap_hdr *) skb->data;
		len = FUNC2(hdr->len) + L2CAP_HDR_SIZE;

		if (len == skb->len) {
			/* Complete frame received */
			FUNC7(conn, skb);
			return 0;
		}

		FUNC0("Start: total len %d, frag len %d", len, skb->len);

		if (skb->len > len) {
			FUNC1("Frame is too long (len %d, expected len %d)",
				skb->len, len);
			FUNC6(conn, ECOMM);
			goto drop;
		}

		/* Allocate skb for the complete frame (with header) */
		conn->rx_skb = FUNC3(len, GFP_ATOMIC);
		if (!conn->rx_skb)
			goto drop;

		FUNC8(skb, FUNC9(conn->rx_skb, skb->len),
								skb->len);
		conn->rx_len = len - skb->len;
	} else {
		FUNC0("Cont: frag len %d (expecting %d)", skb->len, conn->rx_len);

		if (!conn->rx_len) {
			FUNC1("Unexpected continuation frame (len %d)", skb->len);
			FUNC6(conn, ECOMM);
			goto drop;
		}

		if (skb->len > conn->rx_len) {
			FUNC1("Fragment is too long (len %d, expected %d)",
					skb->len, conn->rx_len);
			FUNC4(conn->rx_skb);
			conn->rx_skb = NULL;
			conn->rx_len = 0;
			FUNC6(conn, ECOMM);
			goto drop;
		}

		FUNC8(skb, FUNC9(conn->rx_skb, skb->len),
								skb->len);
		conn->rx_len -= skb->len;

		if (!conn->rx_len) {
			/* Complete frame received */
			FUNC7(conn, conn->rx_skb);
			conn->rx_skb = NULL;
		}
	}

drop:
	FUNC4(skb);
	return 0;
}