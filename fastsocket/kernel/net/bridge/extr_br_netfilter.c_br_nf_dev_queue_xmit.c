
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int br_dev_queue_push_xmit (struct sk_buff*) ;

__attribute__((used)) static int br_nf_dev_queue_xmit(struct sk_buff *skb)
{
        return br_dev_queue_push_xmit(skb);
}
