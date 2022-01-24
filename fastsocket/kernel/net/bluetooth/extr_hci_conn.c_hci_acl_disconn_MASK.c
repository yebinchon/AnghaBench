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
struct hci_cp_disconnect {int /*<<< orphan*/  reason; int /*<<< orphan*/  handle; } ;
struct hci_conn {int /*<<< orphan*/  hdev; int /*<<< orphan*/  handle; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  cp ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*) ; 
 int /*<<< orphan*/  BT_DISCONN ; 
 int /*<<< orphan*/  HCI_OP_DISCONNECT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct hci_cp_disconnect*) ; 

void FUNC3(struct hci_conn *conn, __u8 reason)
{
	struct hci_cp_disconnect cp;

	FUNC0("%p", conn);

	conn->state = BT_DISCONN;

	cp.handle = FUNC1(conn->handle);
	cp.reason = reason;
	FUNC2(conn->hdev, HCI_OP_DISCONNECT, sizeof(cp), &cp);
}