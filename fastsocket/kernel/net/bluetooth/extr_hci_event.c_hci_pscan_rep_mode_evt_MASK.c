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
struct TYPE_2__ {int /*<<< orphan*/  pscan_rep_mode; } ;
struct inquiry_entry {int /*<<< orphan*/  timestamp; TYPE_1__ data; } ;
struct hci_ev_pscan_rep_mode {int /*<<< orphan*/  pscan_rep_mode; int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 struct inquiry_entry* FUNC3 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static inline void FUNC4(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_ev_pscan_rep_mode *ev = (void *) skb->data;
	struct inquiry_entry *ie;

	FUNC0("%s", hdev->name);

	FUNC1(hdev);

	if ((ie = FUNC3(hdev, &ev->bdaddr))) {
		ie->data.pscan_rep_mode = ev->pscan_rep_mode;
		ie->timestamp = jiffies;
	}

	FUNC2(hdev);
}