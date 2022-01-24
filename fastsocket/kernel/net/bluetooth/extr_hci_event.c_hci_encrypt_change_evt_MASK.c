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
struct sk_buff {scalar_t__ data; } ;
struct hci_ev_encrypt_change {scalar_t__ encrypt; int /*<<< orphan*/  status; int /*<<< orphan*/  handle; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {scalar_t__ state; int /*<<< orphan*/  pend; int /*<<< orphan*/  link_mode; } ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_CONN_ENCRYPT_PEND ; 
 int /*<<< orphan*/  HCI_LM_AUTH ; 
 int /*<<< orphan*/  HCI_LM_ENCRYPT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_conn*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_conn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC9(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_encrypt_change *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s status %d", hdev->name, ev->status);

	FUNC5(hdev);

	conn = FUNC3(hdev, FUNC1(ev->handle));
	if (conn) {
		if (!ev->status) {
			if (ev->encrypt) {
				/* Encryption implies authentication */
				conn->link_mode |= HCI_LM_AUTH;
				conn->link_mode |= HCI_LM_ENCRYPT;
			} else
				conn->link_mode &= ~HCI_LM_ENCRYPT;
		}

		FUNC2(HCI_CONN_ENCRYPT_PEND, &conn->pend);

		if (conn->state == BT_CONFIG) {
			if (!ev->status)
				conn->state = BT_CONNECTED;

			FUNC8(conn, ev->status);
			FUNC4(conn);
		} else
			FUNC7(conn, ev->status, ev->encrypt);
	}

	FUNC6(hdev);
}