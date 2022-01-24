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
struct sk_buff {int len; scalar_t__ data; } ;
struct hci_ev_num_comp_pkts {int num_hndl; } ;
struct hci_dev {scalar_t__ acl_cnt; scalar_t__ acl_pkts; scalar_t__ sco_cnt; scalar_t__ sco_pkts; int /*<<< orphan*/  tx_task; int /*<<< orphan*/  name; } ;
struct hci_conn {scalar_t__ type; int /*<<< orphan*/  sent; } ;
typedef  scalar_t__ __u16 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_num_comp_pkts *ev = (void *) skb->data;
	__le16 *ptr;
	int i;

	FUNC4(skb, sizeof(*ev));

	FUNC0("%s num_hndl %d", hdev->name, ev->num_hndl);

	if (skb->len < ev->num_hndl * 4) {
		FUNC0("%s bad parameters", hdev->name);
		return;
	}

	FUNC5(&hdev->tx_task);

	for (i = 0, ptr = (__le16 *) skb->data; i < ev->num_hndl; i++) {
		struct hci_conn *conn;
		__u16  handle, count;

		handle = FUNC1(ptr++);
		count  = FUNC1(ptr++);

		conn = FUNC2(hdev, handle);
		if (conn) {
			conn->sent -= count;

			if (conn->type == ACL_LINK) {
				if ((hdev->acl_cnt += count) > hdev->acl_pkts)
					hdev->acl_cnt = hdev->acl_pkts;
			} else {
				if ((hdev->sco_cnt += count) > hdev->sco_pkts)
					hdev->sco_cnt = hdev->sco_pkts;
			}
		}
	}

	FUNC3(hdev);

	FUNC6(&hdev->tx_task);
}