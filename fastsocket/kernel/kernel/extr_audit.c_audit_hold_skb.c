
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 scalar_t__ audit_backlog_limit ;
 scalar_t__ audit_default ;
 int audit_skb_hold_queue ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void audit_hold_skb(struct sk_buff *skb)
{
 if (audit_default &&
     skb_queue_len(&audit_skb_hold_queue) < audit_backlog_limit)
  skb_queue_tail(&audit_skb_hold_queue, skb);
 else
  kfree_skb(skb);
}
