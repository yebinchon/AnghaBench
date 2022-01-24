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
struct hci_cp_change_conn_link_key {int /*<<< orphan*/  handle; } ;
struct hci_conn {int /*<<< orphan*/  hdev; int /*<<< orphan*/  handle; int /*<<< orphan*/  pend; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*) ; 
 int /*<<< orphan*/  HCI_CONN_AUTH_PEND ; 
 int /*<<< orphan*/  HCI_OP_CHANGE_CONN_LINK_KEY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct hci_cp_change_conn_link_key*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct hci_conn *conn)
{
	FUNC0("conn %p", conn);

	if (!FUNC3(HCI_CONN_AUTH_PEND, &conn->pend)) {
		struct hci_cp_change_conn_link_key cp;
		cp.handle = FUNC1(conn->handle);
		FUNC2(conn->hdev, HCI_OP_CHANGE_CONN_LINK_KEY,
							sizeof(cp), &cp);
	}

	return 0;
}