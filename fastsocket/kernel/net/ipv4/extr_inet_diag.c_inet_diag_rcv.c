
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int inet_diag_mutex ;
 int inet_diag_rcv_msg ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netlink_rcv_skb (struct sk_buff*,int *) ;

__attribute__((used)) static void inet_diag_rcv(struct sk_buff *skb)
{
 mutex_lock(&inet_diag_mutex);
 netlink_rcv_skb(skb, &inet_diag_rcv_msg);
 mutex_unlock(&inet_diag_mutex);
}
