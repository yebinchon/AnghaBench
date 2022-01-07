
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {struct dcbnl_rtnl_ops* dcbnl_ops; } ;
struct net {int dummy; } ;
struct dcbnl_rtnl_ops {int dummy; } ;
struct dcbmsg {int cmd; int dcb_family; } ;


 int AF_UNSPEC ;
 int DCB_CMD_CEE_GET ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 struct dcbmsg* NLMSG_DATA (struct nlmsghdr*) ;
 int NLMSG_DEFAULT_SIZE ;
 int RTM_GETDCB ;
 int dcbnl_cee_fill (struct sk_buff*,struct net_device*) ;
 struct net* dev_net (struct net_device*) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;

__attribute__((used)) static int dcbnl_cee_get(struct net_device *netdev, struct nlattr **tb,
    u32 pid, u32 seq, u16 flags)
{
 struct net *net = dev_net(netdev);
 struct sk_buff *skb;
 struct nlmsghdr *nlh;
 struct dcbmsg *dcb;
 const struct dcbnl_rtnl_ops *ops = netdev->dcbnl_ops;
 int err;

 if (!ops)
  return -EOPNOTSUPP;

 skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!skb)
  return -ENOBUFS;

 nlh = nlmsg_put(skb, pid, seq, RTM_GETDCB, sizeof(*dcb), flags);
 if (nlh == ((void*)0)) {
  nlmsg_free(skb);
  return -EMSGSIZE;
 }

 dcb = NLMSG_DATA(nlh);
 dcb->dcb_family = AF_UNSPEC;
 dcb->cmd = DCB_CMD_CEE_GET;

 err = dcbnl_cee_fill(skb, netdev);

 if (err < 0) {
  nlmsg_cancel(skb, nlh);
  nlmsg_free(skb);
 } else {
  nlmsg_end(skb, nlh);
  err = rtnl_unicast(skb, net, pid);
 }
 return err;
}
