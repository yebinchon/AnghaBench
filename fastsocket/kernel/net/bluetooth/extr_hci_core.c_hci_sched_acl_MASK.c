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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct hci_dev {scalar_t__ acl_cnt; scalar_t__ acl_last_tx; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct hci_conn {int /*<<< orphan*/  sent; int /*<<< orphan*/  data_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sk_buff*,...) ; 
 int /*<<< orphan*/  HCI_RAW ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ jiffies ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void FUNC8(struct hci_dev *hdev)
{
	struct hci_conn *conn;
	struct sk_buff *skb;
	int quote;

	FUNC0("%s", hdev->name);

	if (!FUNC6(HCI_RAW, &hdev->flags)) {
		/* ACL tx timeout must be longer than maximum
		 * link supervision timeout (40.9 seconds) */
		if (!hdev->acl_cnt && FUNC7(jiffies, hdev->acl_last_tx + HZ * 45))
			FUNC1(hdev);
	}

	while (hdev->acl_cnt && (conn = FUNC3(hdev, ACL_LINK, &quote))) {
		while (quote-- && (skb = FUNC5(&conn->data_q))) {
			FUNC0("skb %p len %d", skb, skb->len);

			FUNC2(conn);

			FUNC4(skb);
			hdev->acl_last_tx = jiffies;

			hdev->acl_cnt--;
			conn->sent++;
		}
	}
}