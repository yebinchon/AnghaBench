
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sk_buff {int dummy; } ;


 int netlink_unicast (int ,struct sk_buff*,int ,int) ;
 int nfnl ;

int nfnetlink_unicast(struct sk_buff *skb, u_int32_t pid, int flags)
{
 return netlink_unicast(nfnl, skb, pid, flags);
}
