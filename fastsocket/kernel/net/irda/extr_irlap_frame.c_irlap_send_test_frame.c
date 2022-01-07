
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_frame {int control; scalar_t__ caddr; void* daddr; void* saddr; } ;
struct sk_buff {int len; int data; } ;
struct irlap_cb {int qos_tx; int saddr; } ;
typedef scalar_t__ __u8 ;
typedef int __u32 ;


 scalar_t__ CBROADCAST ;
 int GFP_ATOMIC ;
 int LAP_ADDR_HEADER ;
 int LAP_CTRL_HEADER ;
 int PF_BIT ;
 int TEST_RSP ;
 struct sk_buff* alloc_skb (int,int ) ;
 void* cpu_to_le32 (int ) ;
 int irlap_queue_xmit (struct irlap_cb*,struct sk_buff*) ;
 int irlap_wait_min_turn_around (struct irlap_cb*,int *) ;
 int memcpy (scalar_t__*,int ,int) ;
 scalar_t__* skb_put (struct sk_buff*,int) ;

void irlap_send_test_frame(struct irlap_cb *self, __u8 caddr, __u32 daddr,
      struct sk_buff *cmd)
{
 struct sk_buff *tx_skb;
 struct test_frame *frame;
 __u8 *info;

 tx_skb = alloc_skb(cmd->len + sizeof(struct test_frame), GFP_ATOMIC);
 if (!tx_skb)
  return;


 if (caddr == CBROADCAST) {
  frame = (struct test_frame *)
   skb_put(tx_skb, sizeof(struct test_frame));


  frame->saddr = cpu_to_le32(self->saddr);
  frame->daddr = cpu_to_le32(daddr);
 } else
  frame = (struct test_frame *) skb_put(tx_skb, LAP_ADDR_HEADER + LAP_CTRL_HEADER);

 frame->caddr = caddr;
 frame->control = TEST_RSP | PF_BIT;


 info = skb_put(tx_skb, cmd->len);
 memcpy(info, cmd->data, cmd->len);


 irlap_wait_min_turn_around(self, &self->qos_tx);
 irlap_queue_xmit(self, tx_skb);
}
