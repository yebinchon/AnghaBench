
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int genl_lock () ;
 int genl_rcv_msg ;
 int genl_unlock () ;
 int netlink_rcv_skb (struct sk_buff*,int *) ;

__attribute__((used)) static void genl_rcv(struct sk_buff *skb)
{
 genl_lock();
 netlink_rcv_skb(skb, &genl_rcv_msg);
 genl_unlock();
}
