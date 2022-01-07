
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net_device {scalar_t__ ifindex; scalar_t__ mtu; scalar_t__ iflink; int dev_addr; scalar_t__ addr_len; int name; int type; int operstate; } ;
struct net_bridge_port {int state; struct net_device* dev; struct net_bridge* br; } ;
struct net_bridge {TYPE_1__* dev; } ;
struct ifinfomsg {scalar_t__ ifi_index; scalar_t__ ifi_change; int ifi_flags; int ifi_type; scalar_t__ __ifi_pad; int ifi_family; } ;
struct TYPE_2__ {scalar_t__ ifindex; int name; } ;


 int AF_BRIDGE ;
 int EMSGSIZE ;
 int IFLA_ADDRESS ;
 int IFLA_IFNAME ;
 int IFLA_LINK ;
 int IFLA_MASTER ;
 int IFLA_MTU ;
 int IFLA_OPERSTATE ;
 int IFLA_PROTINFO ;
 int IF_OPER_DOWN ;
 int NLA_PUT (struct sk_buff*,int ,scalar_t__,int ) ;
 int NLA_PUT_STRING (struct sk_buff*,int ,int ) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,scalar_t__) ;
 int NLA_PUT_U8 (struct sk_buff*,int ,int ) ;
 int RTM_NEWLINK ;
 int dev_get_flags (struct net_device const*) ;
 scalar_t__ netif_running (struct net_device const*) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct ifinfomsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,unsigned int) ;
 int pr_debug (char*,int,int ,int ) ;

__attribute__((used)) static int br_fill_ifinfo(struct sk_buff *skb, const struct net_bridge_port *port,
     u32 pid, u32 seq, int event, unsigned int flags)
{
 const struct net_bridge *br = port->br;
 const struct net_device *dev = port->dev;
 struct ifinfomsg *hdr;
 struct nlmsghdr *nlh;
 u8 operstate = netif_running(dev) ? dev->operstate : IF_OPER_DOWN;

 pr_debug("br_fill_info event %d port %s master %s\n",
   event, dev->name, br->dev->name);

 nlh = nlmsg_put(skb, pid, seq, event, sizeof(*hdr), flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 hdr = nlmsg_data(nlh);
 hdr->ifi_family = AF_BRIDGE;
 hdr->__ifi_pad = 0;
 hdr->ifi_type = dev->type;
 hdr->ifi_index = dev->ifindex;
 hdr->ifi_flags = dev_get_flags(dev);
 hdr->ifi_change = 0;

 NLA_PUT_STRING(skb, IFLA_IFNAME, dev->name);
 NLA_PUT_U32(skb, IFLA_MASTER, br->dev->ifindex);
 NLA_PUT_U32(skb, IFLA_MTU, dev->mtu);
 NLA_PUT_U8(skb, IFLA_OPERSTATE, operstate);

 if (dev->addr_len)
  NLA_PUT(skb, IFLA_ADDRESS, dev->addr_len, dev->dev_addr);

 if (dev->ifindex != dev->iflink)
  NLA_PUT_U32(skb, IFLA_LINK, dev->iflink);

 if (event == RTM_NEWLINK)
  NLA_PUT_U8(skb, IFLA_PROTINFO, port->state);

 return nlmsg_end(skb, nlh);

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
