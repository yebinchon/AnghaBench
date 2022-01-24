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
struct hci_dev {scalar_t__ mode; int link_policy; int handle; int sniff_max_interval; int sniff_min_interval; int /*<<< orphan*/  pend; int /*<<< orphan*/  flags; struct hci_dev* hdev; } ;
struct hci_cp_sniff_subrate {void* timeout; void* attempt; void* min_interval; void* max_interval; void* handle; void* min_local_timeout; void* min_remote_timeout; void* max_latency; } ;
struct hci_cp_sniff_mode {void* timeout; void* attempt; void* min_interval; void* max_interval; void* handle; void* min_local_timeout; void* min_remote_timeout; void* max_latency; } ;
struct hci_conn {scalar_t__ mode; int link_policy; int handle; int sniff_max_interval; int sniff_min_interval; int /*<<< orphan*/  pend; int /*<<< orphan*/  flags; struct hci_conn* hdev; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*,scalar_t__) ; 
 scalar_t__ HCI_CM_ACTIVE ; 
 int /*<<< orphan*/  HCI_CONN_MODE_CHANGE_PEND ; 
 int HCI_LP_SNIFF ; 
 int /*<<< orphan*/  HCI_OP_SNIFF_MODE ; 
 int /*<<< orphan*/  HCI_OP_SNIFF_SUBRATE ; 
 int /*<<< orphan*/  HCI_RAW ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_sniff_subrate*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 scalar_t__ FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct hci_conn *conn)
{
	struct hci_dev *hdev = conn->hdev;

	FUNC0("conn %p mode %d", conn, conn->mode);

	if (FUNC6(HCI_RAW, &hdev->flags))
		return;

	if (!FUNC3(hdev) || !FUNC3(conn))
		return;

	if (conn->mode != HCI_CM_ACTIVE || !(conn->link_policy & HCI_LP_SNIFF))
		return;

	if (FUNC4(hdev) && FUNC4(conn)) {
		struct hci_cp_sniff_subrate cp;
		cp.handle             = FUNC1(conn->handle);
		cp.max_latency        = FUNC1(0);
		cp.min_remote_timeout = FUNC1(0);
		cp.min_local_timeout  = FUNC1(0);
		FUNC2(hdev, HCI_OP_SNIFF_SUBRATE, sizeof(cp), &cp);
	}

	if (!FUNC5(HCI_CONN_MODE_CHANGE_PEND, &conn->pend)) {
		struct hci_cp_sniff_mode cp;
		cp.handle       = FUNC1(conn->handle);
		cp.max_interval = FUNC1(hdev->sniff_max_interval);
		cp.min_interval = FUNC1(hdev->sniff_min_interval);
		cp.attempt      = FUNC1(4);
		cp.timeout      = FUNC1(1);
		FUNC2(hdev, HCI_OP_SNIFF_MODE, sizeof(cp), &cp);
	}
}