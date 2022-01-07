
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net_device {scalar_t__ ifindex; scalar_t__ mtu; scalar_t__ iflink; int dev_addr; scalar_t__ addr_len; int name; int type; } ;
struct inet6_dev {struct net_device* dev; } ;
struct ifinfomsg {scalar_t__ ifi_index; scalar_t__ ifi_change; int ifi_flags; int ifi_type; scalar_t__ __ifi_pad; int ifi_family; } ;


 int AF_INET6 ;
 int EMSGSIZE ;
 int IFLA_ADDRESS ;
 int IFLA_IFNAME ;
 int IFLA_LINK ;
 int IFLA_MTU ;
 int IFLA_PROTINFO ;
 int NLA_PUT (struct sk_buff*,int ,scalar_t__,int ) ;
 int NLA_PUT_STRING (struct sk_buff*,int ,int ) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,scalar_t__) ;
 int dev_get_flags (struct net_device*) ;
 scalar_t__ inet6_fill_ifla6_attrs (struct sk_buff*,struct inet6_dev*) ;
 int nla_nest_end (struct sk_buff*,void*) ;
 void* nla_nest_start (struct sk_buff*,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct ifinfomsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,unsigned int) ;

__attribute__((used)) static int inet6_fill_ifinfo(struct sk_buff *skb, struct inet6_dev *idev,
        u32 pid, u32 seq, int event, unsigned int flags)
{
 struct net_device *dev = idev->dev;
 struct ifinfomsg *hdr;
 struct nlmsghdr *nlh;
 void *protoinfo;

 nlh = nlmsg_put(skb, pid, seq, event, sizeof(*hdr), flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 hdr = nlmsg_data(nlh);
 hdr->ifi_family = AF_INET6;
 hdr->__ifi_pad = 0;
 hdr->ifi_type = dev->type;
 hdr->ifi_index = dev->ifindex;
 hdr->ifi_flags = dev_get_flags(dev);
 hdr->ifi_change = 0;

 NLA_PUT_STRING(skb, IFLA_IFNAME, dev->name);

 if (dev->addr_len)
  NLA_PUT(skb, IFLA_ADDRESS, dev->addr_len, dev->dev_addr);

 NLA_PUT_U32(skb, IFLA_MTU, dev->mtu);
 if (dev->ifindex != dev->iflink)
  NLA_PUT_U32(skb, IFLA_LINK, dev->iflink);

 protoinfo = nla_nest_start(skb, IFLA_PROTINFO);
 if (protoinfo == ((void*)0))
  goto nla_put_failure;

 if (inet6_fill_ifla6_attrs(skb, idev) < 0)
  goto nla_put_failure;

 nla_nest_end(skb, protoinfo);
 return nlmsg_end(skb, nlh);

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
