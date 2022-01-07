
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net {struct sock* genl_sock; } ;
typedef int gfp_t ;


 int nlmsg_notify (struct sock*,struct sk_buff*,int ,int ,int,int ) ;
 int nlmsg_report (struct nlmsghdr*) ;

void genl_notify(struct sk_buff *skb, struct net *net, u32 pid, u32 group,
   struct nlmsghdr *nlh, gfp_t flags)
{
 struct sock *sk = net->genl_sock;
 int report = 0;

 if (nlh)
  report = nlmsg_report(nlh);

 nlmsg_notify(sk, skb, pid, group, report, flags);
}
