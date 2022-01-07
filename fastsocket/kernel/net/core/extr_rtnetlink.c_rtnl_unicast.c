
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {struct sock* rtnl; } ;


 int nlmsg_unicast (struct sock*,struct sk_buff*,int ) ;

int rtnl_unicast(struct sk_buff *skb, struct net *net, u32 pid)
{
 struct sock *rtnl = net->rtnl;

 return nlmsg_unicast(rtnl, skb, pid);
}
