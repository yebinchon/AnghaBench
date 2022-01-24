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
struct hci_ev_conn_complete {scalar_t__ link_type; scalar_t__ status; int /*<<< orphan*/  handle; int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int hci_ver; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct hci_cp_read_remote_features {int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  handle; } ;
struct hci_cp_change_conn_ptype {int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  handle; } ;
struct hci_conn {scalar_t__ type; int /*<<< orphan*/  handle; struct hci_conn* link; int /*<<< orphan*/  state; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  out; int /*<<< orphan*/  link_mode; int /*<<< orphan*/  disc_timeout; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 int /*<<< orphan*/  BT_CLOSED ; 
 int /*<<< orphan*/  BT_CONFIG ; 
 int /*<<< orphan*/  BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ESCO_LINK ; 
 int /*<<< orphan*/  HCI_AUTH ; 
 int /*<<< orphan*/  HCI_DISCONN_TIMEOUT ; 
 int /*<<< orphan*/  HCI_ENCRYPT ; 
 int /*<<< orphan*/  HCI_LM_AUTH ; 
 int /*<<< orphan*/  HCI_LM_ENCRYPT ; 
 int /*<<< orphan*/  HCI_OP_CHANGE_CONN_PTYPE ; 
 int /*<<< orphan*/  HCI_OP_READ_REMOTE_FEATURES ; 
 scalar_t__ SCO_LINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_conn*) ; 
 struct hci_conn* FUNC7 (struct hci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct hci_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_read_remote_features*) ; 
 int /*<<< orphan*/  FUNC14 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct hci_dev*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC17(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_conn_complete *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s", hdev->name);

	FUNC10(hdev);

	conn = FUNC7(hdev, ev->link_type, &ev->bdaddr);
	if (!conn) {
		if (ev->link_type != SCO_LINK)
			goto unlock;

		conn = FUNC7(hdev, ESCO_LINK, &ev->bdaddr);
		if (!conn)
			goto unlock;

		conn->type = SCO_LINK;
	}

	if (!ev->status) {
		conn->handle = FUNC1(ev->handle);

		if (conn->type == ACL_LINK) {
			conn->state = BT_CONFIG;
			FUNC8(conn);
			conn->disc_timeout = HCI_DISCONN_TIMEOUT;
		} else
			conn->state = BT_CONNECTED;

		FUNC9(conn);
		FUNC4(conn);

		if (FUNC16(HCI_AUTH, &hdev->flags))
			conn->link_mode |= HCI_LM_AUTH;

		if (FUNC16(HCI_ENCRYPT, &hdev->flags))
			conn->link_mode |= HCI_LM_ENCRYPT;

		/* Get remote features */
		if (conn->type == ACL_LINK) {
			struct hci_cp_read_remote_features cp;
			cp.handle = ev->handle;
			FUNC13(hdev, HCI_OP_READ_REMOTE_FEATURES,
							sizeof(cp), &cp);
		}

		/* Set packet type for incoming connection */
		if (!conn->out && hdev->hci_ver < 3) {
			struct hci_cp_change_conn_ptype cp;
			cp.handle = ev->handle;
			cp.pkt_type = FUNC2(conn->pkt_type);
			FUNC13(hdev, HCI_OP_CHANGE_CONN_PTYPE,
							sizeof(cp), &cp);
		}
	} else
		conn->state = BT_CLOSED;

	if (conn->type == ACL_LINK) {
		struct hci_conn *sco = conn->link;
		if (sco) {
			if (!ev->status) {
				if (FUNC15(hdev))
					FUNC14(sco, conn->handle);
				else
					FUNC3(sco, conn->handle);
			} else {
				FUNC12(sco, ev->status);
				FUNC6(sco);
			}
		}
	}

	if (ev->status) {
		FUNC12(conn, ev->status);
		FUNC6(conn);
	} else if (ev->link_type != ACL_LINK)
		FUNC12(conn, ev->status);

unlock:
	FUNC11(hdev);

	FUNC5(hdev);
}