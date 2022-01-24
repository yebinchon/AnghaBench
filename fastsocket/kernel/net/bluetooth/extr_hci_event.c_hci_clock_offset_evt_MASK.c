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
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  clock_offset; } ;
struct inquiry_entry {int /*<<< orphan*/  timestamp; TYPE_1__ data; } ;
struct hci_ev_clock_offset {int /*<<< orphan*/  clock_offset; int /*<<< orphan*/  status; int /*<<< orphan*/  handle; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 struct inquiry_entry* FUNC5 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static inline void FUNC6(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_clock_offset *ev = (void *) skb->data;
	struct hci_conn *conn;

	FUNC0("%s status %d", hdev->name, ev->status);

	FUNC3(hdev);

	conn = FUNC2(hdev, FUNC1(ev->handle));
	if (conn && !ev->status) {
		struct inquiry_entry *ie;

		if ((ie = FUNC5(hdev, &conn->dst))) {
			ie->data.clock_offset = ev->clock_offset;
			ie->timestamp = jiffies;
		}
	}

	FUNC4(hdev);
}