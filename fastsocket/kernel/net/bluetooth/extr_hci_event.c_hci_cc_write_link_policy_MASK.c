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
struct hci_rp_write_link_policy {int /*<<< orphan*/  handle; scalar_t__ status; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {int /*<<< orphan*/  link_policy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  HCI_OP_WRITE_LINK_POLICY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 void* FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_rp_write_link_policy *rp = (void *) skb->data;
	struct hci_conn *conn;
	void *sent;

	FUNC0("%s status 0x%x", hdev->name, rp->status);

	if (rp->status)
		return;

	sent = FUNC6(hdev, HCI_OP_WRITE_LINK_POLICY);
	if (!sent)
		return;

	FUNC4(hdev);

	conn = FUNC3(hdev, FUNC1(rp->handle));
	if (conn)
		conn->link_policy = FUNC2(sent + 2);

	FUNC5(hdev);
}