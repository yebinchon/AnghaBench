
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int netlink_rcv_skb (struct sk_buff*,int *) ;
 int nfnetlink_rcv_msg ;
 int nfnl_lock () ;
 int nfnl_unlock () ;

__attribute__((used)) static void nfnetlink_rcv(struct sk_buff *skb)
{
 nfnl_lock();
 netlink_rcv_skb(skb, &nfnetlink_rcv_msg);
 nfnl_unlock();
}
