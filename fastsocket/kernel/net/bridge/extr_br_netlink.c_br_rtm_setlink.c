
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {struct net_bridge_port* br_port; } ;
struct net_bridge_port {scalar_t__ state; TYPE_1__* br; } ;
struct net {int dummy; } ;
struct ifinfomsg {scalar_t__ ifi_family; int ifi_index; } ;
struct TYPE_2__ {scalar_t__ stp_enabled; } ;


 scalar_t__ AF_BRIDGE ;
 scalar_t__ BR_KERNEL_STP ;
 scalar_t__ BR_STATE_BLOCKING ;
 scalar_t__ BR_STATE_DISABLED ;
 int EBUSY ;
 int EINVAL ;
 int ENETDOWN ;
 int ENODEV ;
 int EPFNOSUPPORT ;
 int IFLA_PROTINFO ;
 struct net_device* __dev_get_by_index (struct net*,int ) ;
 int br_log_state (struct net_bridge_port*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_running (struct net_device*) ;
 scalar_t__ nla_get_u8 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 struct ifinfomsg* nlmsg_data (struct nlmsghdr*) ;
 struct nlattr* nlmsg_find_attr (struct nlmsghdr*,int,int ) ;
 int nlmsg_len (struct nlmsghdr*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int br_rtm_setlink(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
 struct net *net = sock_net(skb->sk);
 struct ifinfomsg *ifm;
 struct nlattr *protinfo;
 struct net_device *dev;
 struct net_bridge_port *p;
 u8 new_state;

 if (nlmsg_len(nlh) < sizeof(*ifm))
  return -EINVAL;

 ifm = nlmsg_data(nlh);
 if (ifm->ifi_family != AF_BRIDGE)
  return -EPFNOSUPPORT;

 protinfo = nlmsg_find_attr(nlh, sizeof(*ifm), IFLA_PROTINFO);
 if (!protinfo || nla_len(protinfo) < sizeof(u8))
  return -EINVAL;

 new_state = nla_get_u8(protinfo);
 if (new_state > BR_STATE_BLOCKING)
  return -EINVAL;

 dev = __dev_get_by_index(net, ifm->ifi_index);
 if (!dev)
  return -ENODEV;

 p = dev->br_port;
 if (!p)
  return -EINVAL;


 if (p->br->stp_enabled == BR_KERNEL_STP)
  return -EBUSY;

 if (!netif_running(dev) ||
     (!netif_carrier_ok(dev) && new_state != BR_STATE_DISABLED))
  return -ENETDOWN;

 p->state = new_state;
 br_log_state(p);
 return 0;
}
