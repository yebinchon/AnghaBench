
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static int
nfqnl_recv_unsupp(struct sock *ctnl, struct sk_buff *skb,
    const struct nlmsghdr *nlh,
    const struct nlattr * const nfqa[])
{
 return -ENOTSUPP;
}
