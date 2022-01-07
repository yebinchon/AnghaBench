
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {void* dev; int len; } ;
struct hci_dev {int cmd_q; int name; } ;
struct hci_command_hdr {int plen; int opcode; } ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_2__ {int pkt_type; } ;


 int BT_DBG (char*,int ,...) ;
 int BT_ERR (char*,int ) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int HCI_COMMAND_HDR_SIZE ;
 int HCI_COMMAND_PKT ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 struct sk_buff* bt_skb_alloc (int,int ) ;
 int cpu_to_le16 (int ) ;
 int hci_sched_cmd (struct hci_dev*) ;
 int memcpy (scalar_t__,void*,int) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

int hci_send_cmd(struct hci_dev *hdev, __u16 opcode, __u32 plen, void *param)
{
 int len = HCI_COMMAND_HDR_SIZE + plen;
 struct hci_command_hdr *hdr;
 struct sk_buff *skb;

 BT_DBG("%s opcode 0x%x plen %d", hdev->name, opcode, plen);

 skb = bt_skb_alloc(len, GFP_ATOMIC);
 if (!skb) {
  BT_ERR("%s no memory for command", hdev->name);
  return -ENOMEM;
 }

 hdr = (struct hci_command_hdr *) skb_put(skb, HCI_COMMAND_HDR_SIZE);
 hdr->opcode = cpu_to_le16(opcode);
 hdr->plen = plen;

 if (plen)
  memcpy(skb_put(skb, plen), param, plen);

 BT_DBG("skb len %d", skb->len);

 bt_cb(skb)->pkt_type = HCI_COMMAND_PKT;
 skb->dev = (void *) hdev;
 skb_queue_tail(&hdev->cmd_q, skb);
 hci_sched_cmd(hdev);

 return 0;
}
