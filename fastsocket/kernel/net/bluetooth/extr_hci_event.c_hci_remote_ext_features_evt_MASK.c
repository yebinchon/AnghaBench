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
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int ssp_mode; } ;
struct inquiry_entry {TYPE_1__ data; } ;
struct hci_ev_remote_ext_features {int page; int* features; int /*<<< orphan*/  status; int /*<<< orphan*/  handle; } ;
struct hci_dev {scalar_t__ ssp_mode; int /*<<< orphan*/  name; } ;
struct hci_cp_auth_requested {int /*<<< orphan*/  handle; } ;
struct hci_conn {int ssp_mode; scalar_t__ state; scalar_t__ sec_level; scalar_t__ out; int /*<<< orphan*/  dst; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ BT_SECURITY_SDP ; 
 int /*<<< orphan*/  HCI_OP_AUTH_REQUESTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 struct inquiry_entry* FUNC6 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_auth_requested*) ; 

__attribute__((used)) static inline void FUNC9(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_remote_ext_features *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s", hdev->name);

	FUNC4(hdev);

	conn = FUNC2(hdev, FUNC1(ev->handle));
	if (conn) {
		if (!ev->status && ev->page == 0x01) {
			struct inquiry_entry *ie;

			if ((ie = FUNC6(hdev, &conn->dst)))
				ie->data.ssp_mode = (ev->features[0] & 0x01);

			conn->ssp_mode = (ev->features[0] & 0x01);
		}

		if (conn->state == BT_CONFIG) {
			if (!ev->status && hdev->ssp_mode > 0 &&
					conn->ssp_mode > 0 && conn->out &&
					conn->sec_level != BT_SECURITY_SDP) {
				struct hci_cp_auth_requested cp;
				cp.handle = ev->handle;
				FUNC8(hdev, HCI_OP_AUTH_REQUESTED,
							sizeof(cp), &cp);
			} else {
				conn->state = BT_CONNECTED;
				FUNC7(conn, ev->status);
				FUNC3(conn);
			}
		}
	}

	FUNC5(hdev);
}