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
struct hci_cp_create_conn_cancel {int /*<<< orphan*/  bdaddr; } ;
struct hci_conn {TYPE_1__* hdev; int /*<<< orphan*/  dst; } ;
typedef  int /*<<< orphan*/  cp ;
struct TYPE_2__ {int hci_ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*) ; 
 int /*<<< orphan*/  HCI_OP_CREATE_CONN_CANCEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,struct hci_cp_create_conn_cancel*) ; 

__attribute__((used)) static void FUNC3(struct hci_conn *conn)
{
	struct hci_cp_create_conn_cancel cp;

	FUNC0("%p", conn);

	if (conn->hdev->hci_ver < 2)
		return;

	FUNC1(&cp.bdaddr, &conn->dst);
	FUNC2(conn->hdev, HCI_OP_CREATE_CONN_CANCEL, sizeof(cp), &cp);
}