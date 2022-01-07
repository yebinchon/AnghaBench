
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net_device {int ifindex; } ;
struct ifaddrmsg {int ifa_index; int ifa_scope; int ifa_flags; scalar_t__ ifa_prefixlen; int ifa_family; } ;


 int AF_PHONET ;
 int EMSGSIZE ;
 int IFA_F_PERMANENT ;
 int IFA_LOCAL ;
 int NLA_PUT_U8 (struct sk_buff*,int ,int ) ;
 int RT_SCOPE_LINK ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct ifaddrmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,int ) ;

__attribute__((used)) static int fill_addr(struct sk_buff *skb, struct net_device *dev, u8 addr,
   u32 pid, u32 seq, int event)
{
 struct ifaddrmsg *ifm;
 struct nlmsghdr *nlh;

 nlh = nlmsg_put(skb, pid, seq, event, sizeof(*ifm), 0);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 ifm = nlmsg_data(nlh);
 ifm->ifa_family = AF_PHONET;
 ifm->ifa_prefixlen = 0;
 ifm->ifa_flags = IFA_F_PERMANENT;
 ifm->ifa_scope = RT_SCOPE_LINK;
 ifm->ifa_index = dev->ifindex;
 NLA_PUT_U8(skb, IFA_LOCAL, addr);
 return nlmsg_end(skb, nlh);

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
