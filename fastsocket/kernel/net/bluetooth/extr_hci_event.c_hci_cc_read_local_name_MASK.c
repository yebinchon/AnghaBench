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
struct hci_rp_read_local_name {int /*<<< orphan*/  name; scalar_t__ status; } ;
struct hci_dev {int /*<<< orphan*/  dev_name; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct hci_dev *hdev, struct sk_buff *skb)
{
	struct hci_rp_read_local_name *rp = (void *) skb->data;

	FUNC0("%s status 0x%x", hdev->name, rp->status);

	if (rp->status)
		return;

	FUNC1(hdev->dev_name, rp->name, 248);
}