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
struct hci_ev_auth_complete {int /*<<< orphan*/  status; int /*<<< orphan*/  handle; } ;
struct hci_dev {scalar_t__ ssp_mode; int /*<<< orphan*/  name; } ;
struct hci_cp_set_conn_encrypt {int encrypt; int /*<<< orphan*/  handle; } ;
struct hci_conn {scalar_t__ state; scalar_t__ ssp_mode; int /*<<< orphan*/  pend; int /*<<< orphan*/  disc_timeout; int /*<<< orphan*/  link_mode; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_CONN_AUTH_PEND ; 
 int /*<<< orphan*/  HCI_CONN_ENCRYPT_PEND ; 
 int /*<<< orphan*/  HCI_DISCONN_TIMEOUT ; 
 int /*<<< orphan*/  HCI_LM_AUTH ; 
 int /*<<< orphan*/  HCI_OP_SET_CONN_ENCRYPT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_conn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_set_conn_encrypt*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC13(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_auth_complete *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s status %d", hdev->name, ev->status);

	FUNC7(hdev);

	conn = FUNC4(hdev, FUNC1(ev->handle));
	if (conn) {
		if (!ev->status)
			conn->link_mode |= HCI_LM_AUTH;

		FUNC2(HCI_CONN_AUTH_PEND, &conn->pend);

		if (conn->state == BT_CONFIG) {
			if (!ev->status && hdev->ssp_mode > 0 &&
							conn->ssp_mode > 0) {
				struct hci_cp_set_conn_encrypt cp;
				cp.handle  = ev->handle;
				cp.encrypt = 0x01;
				FUNC11(hdev, HCI_OP_SET_CONN_ENCRYPT,
							sizeof(cp), &cp);
			} else {
				conn->state = BT_CONNECTED;
				FUNC10(conn, ev->status);
				FUNC6(conn);
			}
		} else {
			FUNC3(conn, ev->status);

			FUNC5(conn);
			conn->disc_timeout = HCI_DISCONN_TIMEOUT;
			FUNC6(conn);
		}

		if (FUNC12(HCI_CONN_ENCRYPT_PEND, &conn->pend)) {
			if (!ev->status) {
				struct hci_cp_set_conn_encrypt cp;
				cp.handle  = ev->handle;
				cp.encrypt = 0x01;
				FUNC11(hdev, HCI_OP_SET_CONN_ENCRYPT,
							sizeof(cp), &cp);
			} else {
				FUNC2(HCI_CONN_ENCRYPT_PEND, &conn->pend);
				FUNC9(conn, ev->status, 0x00);
			}
		}
	}

	FUNC8(hdev);
}