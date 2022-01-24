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
struct hci_cp_set_conn_encrypt {int encrypt; int /*<<< orphan*/  handle; } ;
struct hci_conn {int link_mode; TYPE_1__* hdev; int /*<<< orphan*/  handle; int /*<<< orphan*/  pend; int /*<<< orphan*/  ssp_mode; } ;
typedef  int /*<<< orphan*/  cp ;
typedef  scalar_t__ __u8 ;
struct TYPE_2__ {int /*<<< orphan*/  ssp_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*) ; 
 scalar_t__ BT_SECURITY_LOW ; 
 scalar_t__ BT_SECURITY_SDP ; 
 int /*<<< orphan*/  HCI_CONN_ENCRYPT_PEND ; 
 int HCI_LM_ENCRYPT ; 
 int /*<<< orphan*/  HCI_OP_SET_CONN_ENCRYPT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hci_conn*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,struct hci_cp_set_conn_encrypt*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct hci_conn *conn, __u8 sec_level, __u8 auth_type)
{
	FUNC0("conn %p", conn);

	if (sec_level == BT_SECURITY_SDP)
		return 1;

	if (sec_level == BT_SECURITY_LOW &&
				(!conn->ssp_mode || !conn->hdev->ssp_mode))
		return 1;

	if (conn->link_mode & HCI_LM_ENCRYPT)
		return FUNC2(conn, sec_level, auth_type);

	if (FUNC4(HCI_CONN_ENCRYPT_PEND, &conn->pend))
		return 0;

	if (FUNC2(conn, sec_level, auth_type)) {
		struct hci_cp_set_conn_encrypt cp;
		cp.handle  = FUNC1(conn->handle);
		cp.encrypt = 1;
		FUNC3(conn->hdev, HCI_OP_SET_CONN_ENCRYPT,
							sizeof(cp), &cp);
	}

	return 0;
}