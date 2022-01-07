
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int netlink_rcv_skb (struct sk_buff*,int *) ;
 int rtnetlink_rcv_msg ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void rtnetlink_rcv(struct sk_buff *skb)
{
 rtnl_lock();
 netlink_rcv_skb(skb, &rtnetlink_rcv_msg);
 rtnl_unlock();
}
