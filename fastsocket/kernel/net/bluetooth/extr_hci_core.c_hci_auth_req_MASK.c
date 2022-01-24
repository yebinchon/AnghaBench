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
struct hci_dev {int /*<<< orphan*/  name; } ;
typedef  unsigned long __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  HCI_OP_WRITE_AUTH_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ,int,unsigned long*) ; 

__attribute__((used)) static void FUNC2(struct hci_dev *hdev, unsigned long opt)
{
	__u8 auth = opt;

	FUNC0("%s %x", hdev->name, auth);

	/* Authentication */
	FUNC1(hdev, HCI_OP_WRITE_AUTH_ENABLE, 1, &auth);
}