
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct net_device {struct dcbnl_rtnl_ops* dcbnl_ops; } ;
struct net {int dummy; } ;
struct dcbnl_rtnl_ops {int dummy; } ;
struct dcbmsg {int cmd; int dcb_family; } ;


 int AF_UNSPEC ;
 int DCB_CAP_DCBX_VER_IEEE ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 struct dcbmsg* NLMSG_DATA (struct nlmsghdr*) ;
 int NLMSG_DEFAULT_SIZE ;
 int RTNLGRP_DCB ;
 int dcbnl_cee_fill (struct sk_buff*,struct net_device*) ;
 int dcbnl_ieee_fill (struct sk_buff*,struct net_device*) ;
 struct net* dev_net (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,int ) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;

__attribute__((used)) static int dcbnl_notify(struct net_device *dev, int event, int cmd,
   u32 seq, u32 pid, int dcbx_ver)
{
 struct net *net = dev_net(dev);
 struct sk_buff *skb;
 struct nlmsghdr *nlh;
 struct dcbmsg *dcb;
 const struct dcbnl_rtnl_ops *ops = dev->dcbnl_ops;
 int err;

 if (!ops)
  return -EOPNOTSUPP;

 skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!skb)
  return -ENOBUFS;

 nlh = nlmsg_put(skb, pid, 0, event, sizeof(*dcb), 0);
 if (nlh == ((void*)0)) {
  nlmsg_free(skb);
  return -EMSGSIZE;
 }

 dcb = NLMSG_DATA(nlh);
 dcb->dcb_family = AF_UNSPEC;
 dcb->cmd = cmd;

 if (dcbx_ver == DCB_CAP_DCBX_VER_IEEE)
  err = dcbnl_ieee_fill(skb, dev);
 else
  err = dcbnl_cee_fill(skb, dev);

 if (err < 0) {

  nlmsg_cancel(skb, nlh);
  kfree_skb(skb);
  rtnl_set_sk_err(net, RTNLGRP_DCB, err);
 } else {

  nlmsg_end(skb, nlh);
  rtnl_notify(skb, net, 0, RTNLGRP_DCB, ((void*)0), GFP_KERNEL);
 }

 return err;
}
