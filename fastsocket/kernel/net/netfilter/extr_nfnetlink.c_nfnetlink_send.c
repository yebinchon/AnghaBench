
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
typedef int gfp_t ;


 int nfnl ;
 int nlmsg_notify (int ,struct sk_buff*,int ,unsigned int,int,int ) ;

int nfnetlink_send(struct sk_buff *skb, u32 pid,
     unsigned group, int echo, gfp_t flags)
{
 return nlmsg_notify(nfnl, skb, pid, group, echo, flags);
}
