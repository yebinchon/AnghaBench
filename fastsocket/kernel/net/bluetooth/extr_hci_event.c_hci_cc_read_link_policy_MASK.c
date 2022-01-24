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
struct hci_rp_read_link_policy {int /*<<< orphan*/  policy; int /*<<< orphan*/  handle; scalar_t__ status; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {int /*<<< orphan*/  link_policy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 

__attribute__((used)) static void FUNC5(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_rp_read_link_policy *rp = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s status 0x%x", hdev->name, rp->status);

	if (rp->status)
		return;

	FUNC3(hdev);

	conn = FUNC2(hdev, FUNC1(rp->handle));
	if (conn)
		conn->link_policy = FUNC1(rp->policy);

	FUNC4(hdev);
}