
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct in_ifaddr {int ifa_flags; scalar_t__* ifa_label; scalar_t__ ifa_broadcast; scalar_t__ ifa_local; scalar_t__ ifa_address; TYPE_2__* ifa_dev; int ifa_scope; int ifa_prefixlen; } ;
struct ifaddrmsg {int ifa_flags; int ifa_index; int ifa_scope; int ifa_prefixlen; int ifa_family; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int ifindex; } ;


 int AF_INET ;
 int EMSGSIZE ;
 int IFA_ADDRESS ;
 int IFA_BROADCAST ;
 int IFA_F_PERMANENT ;
 int IFA_LABEL ;
 int IFA_LOCAL ;
 int NLA_PUT_BE32 (struct sk_buff*,int ,scalar_t__) ;
 int NLA_PUT_STRING (struct sk_buff*,int ,scalar_t__*) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct ifaddrmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,unsigned int) ;

__attribute__((used)) static int inet_fill_ifaddr(struct sk_buff *skb, struct in_ifaddr *ifa,
       u32 pid, u32 seq, int event, unsigned int flags)
{
 struct ifaddrmsg *ifm;
 struct nlmsghdr *nlh;

 nlh = nlmsg_put(skb, pid, seq, event, sizeof(*ifm), flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 ifm = nlmsg_data(nlh);
 ifm->ifa_family = AF_INET;
 ifm->ifa_prefixlen = ifa->ifa_prefixlen;
 ifm->ifa_flags = ifa->ifa_flags|IFA_F_PERMANENT;
 ifm->ifa_scope = ifa->ifa_scope;
 ifm->ifa_index = ifa->ifa_dev->dev->ifindex;

 if (ifa->ifa_address)
  NLA_PUT_BE32(skb, IFA_ADDRESS, ifa->ifa_address);

 if (ifa->ifa_local)
  NLA_PUT_BE32(skb, IFA_LOCAL, ifa->ifa_local);

 if (ifa->ifa_broadcast)
  NLA_PUT_BE32(skb, IFA_BROADCAST, ifa->ifa_broadcast);

 if (ifa->ifa_label[0])
  NLA_PUT_STRING(skb, IFA_LABEL, ifa->ifa_label);

 return nlmsg_end(skb, nlh);

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
