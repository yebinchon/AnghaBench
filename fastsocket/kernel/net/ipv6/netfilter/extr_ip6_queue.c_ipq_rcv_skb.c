
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int __ipq_rcv_skb (struct sk_buff*) ;
 int ipqnl_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
ipq_rcv_skb(struct sk_buff *skb)
{
 mutex_lock(&ipqnl_mutex);
 __ipq_rcv_skb(skb);
 mutex_unlock(&ipqnl_mutex);
}
