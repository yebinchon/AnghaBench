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
struct hci_cp_auth_requested {int /*<<< orphan*/  handle; } ;
struct hci_conn {scalar_t__ sec_level; int link_mode; int /*<<< orphan*/  hdev; int /*<<< orphan*/  handle; int /*<<< orphan*/  pend; scalar_t__ auth_type; } ;
typedef  int /*<<< orphan*/  cp ;
typedef  scalar_t__ __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*) ; 
 int /*<<< orphan*/  HCI_CONN_AUTH_PEND ; 
 int HCI_LM_AUTH ; 
 int /*<<< orphan*/  HCI_OP_AUTH_REQUESTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct hci_cp_auth_requested*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hci_conn *conn, __u8 sec_level, __u8 auth_type)
{
	FUNC0("conn %p", conn);

	if (sec_level > conn->sec_level)
		conn->sec_level = sec_level;
	else if (conn->link_mode & HCI_LM_AUTH)
		return 1;

	conn->auth_type = auth_type;

	if (!FUNC3(HCI_CONN_AUTH_PEND, &conn->pend)) {
		struct hci_cp_auth_requested cp;
		cp.handle = FUNC1(conn->handle);
		FUNC2(conn->hdev, HCI_OP_AUTH_REQUESTED,
							sizeof(cp), &cp);
	}

	return 0;
}