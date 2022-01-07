
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int write_queue; int ack_queue; } ;
typedef TYPE_1__ ax25_cb ;


 struct sk_buff* skb_dequeue_tail (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;

void ax25_requeue_frames(ax25_cb *ax25)
{
 struct sk_buff *skb;






 while ((skb = skb_dequeue_tail(&ax25->ack_queue)) != ((void*)0))
  skb_queue_head(&ax25->write_queue, skb);
}
