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
struct sk_buff {void* dev; int /*<<< orphan*/  len; } ;
struct hci_dev {int /*<<< orphan*/  cmd_q; int /*<<< orphan*/  name; } ;
struct hci_command_hdr {int plen; int /*<<< orphan*/  opcode; } ;
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_2__ {int /*<<< orphan*/  pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HCI_COMMAND_HDR_SIZE ; 
 int /*<<< orphan*/  HCI_COMMAND_PKT ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,void*,int) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC9(struct hci_dev *hdev, __u16 opcode, __u32 plen, void *param)
{
	int len = HCI_COMMAND_HDR_SIZE + plen;
	struct hci_command_hdr *hdr;
	struct sk_buff *skb;

	FUNC0("%s opcode 0x%x plen %d", hdev->name, opcode, plen);

	skb = FUNC3(len, GFP_ATOMIC);
	if (!skb) {
		FUNC1("%s no memory for command", hdev->name);
		return -ENOMEM;
	}

	hdr = (struct hci_command_hdr *) FUNC7(skb, HCI_COMMAND_HDR_SIZE);
	hdr->opcode = FUNC4(opcode);
	hdr->plen   = plen;

	if (plen)
		FUNC6(FUNC7(skb, plen), param, plen);

	FUNC0("skb len %d", skb->len);

	FUNC2(skb)->pkt_type = HCI_COMMAND_PKT;
	skb->dev = (void *) hdev;
	FUNC8(&hdev->cmd_q, skb);
	FUNC5(hdev);

	return 0;
}