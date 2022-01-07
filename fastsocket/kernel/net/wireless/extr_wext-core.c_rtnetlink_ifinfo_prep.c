
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net_device {int name; int ifindex; int type; } ;
struct ifinfomsg {scalar_t__ ifi_change; int ifi_flags; int ifi_index; int ifi_type; scalar_t__ __ifi_pad; int ifi_family; } ;


 int AF_UNSPEC ;
 int IFLA_IFNAME ;
 int RTM_NEWLINK ;
 int dev_get_flags (struct net_device*) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct ifinfomsg* nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;

__attribute__((used)) static struct nlmsghdr *rtnetlink_ifinfo_prep(struct net_device *dev,
           struct sk_buff *skb)
{
 struct ifinfomsg *r;
 struct nlmsghdr *nlh;

 nlh = nlmsg_put(skb, 0, 0, RTM_NEWLINK, sizeof(*r), 0);
 if (!nlh)
  return ((void*)0);

 r = nlmsg_data(nlh);
 r->ifi_family = AF_UNSPEC;
 r->__ifi_pad = 0;
 r->ifi_type = dev->type;
 r->ifi_index = dev->ifindex;
 r->ifi_flags = dev_get_flags(dev);
 r->ifi_change = 0;

 if (nla_put_string(skb, IFLA_IFNAME, dev->name))
  goto nla_put_failure;

 return nlh;
 nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return ((void*)0);
}
