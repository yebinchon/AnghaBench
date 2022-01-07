
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {size_t len; } ;
struct afs_call {scalar_t__ reply_size; scalar_t__ buffer; } ;


 int BUG () ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int ,scalar_t__,size_t) ;

void afs_transfer_reply(struct afs_call *call, struct sk_buff *skb)
{
 size_t len = skb->len;

 if (skb_copy_bits(skb, 0, call->buffer + call->reply_size, len) < 0)
  BUG();
 call->reply_size += len;
}
