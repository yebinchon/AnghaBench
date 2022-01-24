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
struct hci_dev {int voice_setting; } ;
struct hci_cp_setup_sync_conn {int retrans_effort; void* voice_setting; void* max_latency; void* rx_bandwidth; void* tx_bandwidth; void* pkt_type; void* handle; } ;
struct hci_conn {int out; int pkt_type; int /*<<< orphan*/  attempt; int /*<<< orphan*/  state; struct hci_dev* hdev; } ;
typedef  int /*<<< orphan*/  cp ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*) ; 
 int /*<<< orphan*/  HCI_OP_SETUP_SYNC_CONN ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_setup_sync_conn*) ; 

void FUNC4(struct hci_conn *conn, __u16 handle)
{
	struct hci_dev *hdev = conn->hdev;
	struct hci_cp_setup_sync_conn cp;

	FUNC0("%p", conn);

	conn->state = BT_CONNECT;
	conn->out = 1;

	conn->attempt++;

	cp.handle   = FUNC1(handle);
	cp.pkt_type = FUNC1(conn->pkt_type);

	cp.tx_bandwidth   = FUNC2(0x00001f40);
	cp.rx_bandwidth   = FUNC2(0x00001f40);
	cp.max_latency    = FUNC1(0xffff);
	cp.voice_setting  = FUNC1(hdev->voice_setting);
	cp.retrans_effort = 0xff;

	FUNC3(hdev, HCI_OP_SETUP_SYNC_CONN, sizeof(cp), &cp);
}