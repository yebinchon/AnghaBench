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
struct hci_ev_mode_change {scalar_t__ mode; int /*<<< orphan*/  interval; int /*<<< orphan*/  handle; int /*<<< orphan*/  status; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {scalar_t__ mode; int power_save; int /*<<< orphan*/  pend; int /*<<< orphan*/  interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ HCI_CM_ACTIVE ; 
 int /*<<< orphan*/  HCI_CONN_MODE_CHANGE_PEND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC6(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_mode_change *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s status %d", hdev->name, ev->status);

	FUNC3(hdev);

	conn = FUNC2(hdev, FUNC1(ev->handle));
	if (conn) {
		conn->mode = ev->mode;
		conn->interval = FUNC1(ev->interval);

		if (!FUNC5(HCI_CONN_MODE_CHANGE_PEND, &conn->pend)) {
			if (conn->mode == HCI_CM_ACTIVE)
				conn->power_save = 1;
			else
				conn->power_save = 0;
		}
	}

	FUNC4(hdev);
}