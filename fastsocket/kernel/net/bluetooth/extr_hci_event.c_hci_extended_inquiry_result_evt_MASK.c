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
struct inquiry_data {int pscan_mode; int ssp_mode; int /*<<< orphan*/  rssi; int /*<<< orphan*/  clock_offset; int /*<<< orphan*/  dev_class; int /*<<< orphan*/  pscan_period_mode; int /*<<< orphan*/  pscan_rep_mode; int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct extended_inquiry_info {int /*<<< orphan*/  rssi; int /*<<< orphan*/  clock_offset; int /*<<< orphan*/  dev_class; int /*<<< orphan*/  pscan_period_mode; int /*<<< orphan*/  pscan_rep_mode; int /*<<< orphan*/  bdaddr; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,struct inquiry_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC6(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct inquiry_data data;
	struct extended_inquiry_info *info = (void *) (skb->data + 1);
	int num_rsp = *((__u8 *) skb->data);

	FUNC0("%s num_rsp %d", hdev->name, num_rsp);

	if (!num_rsp)
		return;

	FUNC2(hdev);

	for (; num_rsp; num_rsp--) {
		FUNC1(&data.bdaddr, &info->bdaddr);
		data.pscan_rep_mode     = info->pscan_rep_mode;
		data.pscan_period_mode  = info->pscan_period_mode;
		data.pscan_mode         = 0x00;
		FUNC5(data.dev_class, info->dev_class, 3);
		data.clock_offset       = info->clock_offset;
		data.rssi               = info->rssi;
		data.ssp_mode		= 0x01;
		info++;
		FUNC4(hdev, &data);
	}

	FUNC3(hdev);
}