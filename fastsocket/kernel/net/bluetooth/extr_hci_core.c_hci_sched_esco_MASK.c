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
struct hci_dev {scalar_t__ sco_cnt; int /*<<< orphan*/  name; } ;
struct hci_conn {int /*<<< orphan*/  sent; int /*<<< orphan*/  data_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sk_buff*,...) ; 
 int /*<<< orphan*/  ESCO_LINK ; 
 struct hci_conn* FUNC1 (struct hci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct hci_dev *hdev)
{
	struct hci_conn *conn;
	struct sk_buff *skb;
	int quote;

	FUNC0("%s", hdev->name);

	while (hdev->sco_cnt && (conn = FUNC1(hdev, ESCO_LINK, &quote))) {
		while (quote-- && (skb = FUNC3(&conn->data_q))) {
			FUNC0("skb %p len %d", skb, skb->len);
			FUNC2(skb);

			conn->sent++;
			if (conn->sent == ~0)
				conn->sent = 0;
		}
	}
}