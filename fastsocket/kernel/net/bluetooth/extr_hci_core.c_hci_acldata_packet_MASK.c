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
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct hci_proto {int /*<<< orphan*/  (* recv_acldata ) (struct hci_conn*,struct sk_buff*,int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  acl_rx; } ;
struct hci_dev {int /*<<< orphan*/  name; TYPE_1__ stat; } ;
struct hci_conn {int dummy; } ;
struct hci_acl_hdr {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_ACL_HDR_SIZE ; 
 size_t HCI_PROTO_L2CAP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*) ; 
 struct hci_conn* FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct hci_proto** hci_proto ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_conn*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC12(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_acl_hdr *hdr = (void *) skb->data;
	struct hci_conn *conn;
	__u16 handle, flags;

	FUNC10(skb, HCI_ACL_HDR_SIZE);

	handle = FUNC2(hdr->handle);
	flags  = FUNC7(handle);
	handle = FUNC8(handle);

	FUNC0("%s len %d handle 0x%x flags 0x%x", hdev->name, skb->len, handle, flags);

	hdev->stat.acl_rx++;

	FUNC5(hdev);
	conn = FUNC4(hdev, handle);
	FUNC6(hdev);

	if (conn) {
		register struct hci_proto *hp;

		FUNC3(conn);

		/* Send to upper protocol */
		if ((hp = hci_proto[HCI_PROTO_L2CAP]) && hp->recv_acldata) {
			hp->recv_acldata(conn, skb, flags);
			return;
		}
	} else {
		FUNC1("%s ACL packet for unknown connection handle %d",
			hdev->name, handle);
	}

	FUNC9(skb);
}