
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {void* dev; } ;
struct hci_event_hdr {int plen; int evt; } ;
struct hci_ev_stack_internal {int type; int data; } ;
struct hci_dev {int dummy; } ;
struct TYPE_2__ {int incoming; int pkt_type; } ;


 int GFP_ATOMIC ;
 int HCI_EVENT_HDR_SIZE ;
 int HCI_EVENT_PKT ;
 int HCI_EV_STACK_INTERNAL ;
 int __net_timestamp (struct sk_buff*) ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 struct sk_buff* bt_skb_alloc (int,int ) ;
 int hci_send_to_sock (struct hci_dev*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,void*,int) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;

void hci_si_event(struct hci_dev *hdev, int type, int dlen, void *data)
{
 struct hci_event_hdr *hdr;
 struct hci_ev_stack_internal *ev;
 struct sk_buff *skb;

 skb = bt_skb_alloc(HCI_EVENT_HDR_SIZE + sizeof(*ev) + dlen, GFP_ATOMIC);
 if (!skb)
  return;

 hdr = (void *) skb_put(skb, HCI_EVENT_HDR_SIZE);
 hdr->evt = HCI_EV_STACK_INTERNAL;
 hdr->plen = sizeof(*ev) + dlen;

 ev = (void *) skb_put(skb, sizeof(*ev) + dlen);
 ev->type = type;
 memcpy(ev->data, data, dlen);

 bt_cb(skb)->incoming = 1;
 __net_timestamp(skb);

 bt_cb(skb)->pkt_type = HCI_EVENT_PKT;
 skb->dev = (void *) hdev;
 hci_send_to_sock(hdev, skb);
 kfree_skb(skb);
}
