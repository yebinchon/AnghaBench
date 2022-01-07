
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct ifaddrmsg {int dummy; } ;
struct ifacaddr6 {int aca_tstamp; int aca_cstamp; int aca_addr; TYPE_2__* aca_idev; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int ifindex; } ;


 int EMSGSIZE ;
 int IFA_ANYCAST ;
 int IFA_F_PERMANENT ;
 int IFA_SITE ;
 int INFINITY_LIFE_TIME ;
 int RT_SCOPE_SITE ;
 int RT_SCOPE_UNIVERSE ;
 int ipv6_addr_scope (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,int *) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,unsigned int) ;
 scalar_t__ put_cacheinfo (struct sk_buff*,int ,int ,int ,int ) ;
 int put_ifaddrmsg (struct nlmsghdr*,int,int ,int ,int) ;

__attribute__((used)) static int inet6_fill_ifacaddr(struct sk_buff *skb, struct ifacaddr6 *ifaca,
    u32 pid, u32 seq, int event, unsigned int flags)
{
 struct nlmsghdr *nlh;
 u8 scope = RT_SCOPE_UNIVERSE;
 int ifindex = ifaca->aca_idev->dev->ifindex;

 if (ipv6_addr_scope(&ifaca->aca_addr) & IFA_SITE)
  scope = RT_SCOPE_SITE;

 nlh = nlmsg_put(skb, pid, seq, event, sizeof(struct ifaddrmsg), flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 put_ifaddrmsg(nlh, 128, IFA_F_PERMANENT, scope, ifindex);
 if (nla_put(skb, IFA_ANYCAST, 16, &ifaca->aca_addr) < 0 ||
     put_cacheinfo(skb, ifaca->aca_cstamp, ifaca->aca_tstamp,
     INFINITY_LIFE_TIME, INFINITY_LIFE_TIME) < 0) {
  nlmsg_cancel(skb, nlh);
  return -EMSGSIZE;
 }

 return nlmsg_end(skb, nlh);
}
