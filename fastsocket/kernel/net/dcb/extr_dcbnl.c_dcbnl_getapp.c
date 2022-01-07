
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct dcbmsg {int cmd; int dcb_family; } ;
struct dcb_app {scalar_t__ selector; int protocol; } ;
struct TYPE_2__ {scalar_t__ (* getapp ) (struct net_device*,scalar_t__,int ) ;} ;


 int AF_UNSPEC ;
 size_t DCB_APP_ATTR_ID ;
 size_t DCB_APP_ATTR_IDTYPE ;
 int DCB_APP_ATTR_MAX ;
 size_t DCB_APP_ATTR_PRIORITY ;
 scalar_t__ DCB_APP_IDTYPE_ETHTYPE ;
 scalar_t__ DCB_APP_IDTYPE_PORTNUM ;
 size_t DCB_ATTR_APP ;
 int DCB_CMD_GAPP ;
 int EINVAL ;
 int GFP_KERNEL ;
 struct dcbmsg* NLMSG_DATA (struct nlmsghdr*) ;
 int NLMSG_DEFAULT_SIZE ;
 struct nlmsghdr* NLMSG_NEW (struct sk_buff*,int ,int ,int ,int,int ) ;
 int RTM_GETDCB ;
 scalar_t__ dcb_getapp (struct net_device*,struct dcb_app*) ;
 int dcbnl_app_nest ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int nla_get_u16 (struct nlattr*) ;
 scalar_t__ nla_get_u8 (struct nlattr*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,size_t) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 int nla_put_u16 (struct sk_buff*,size_t,int ) ;
 int nla_put_u8 (struct sk_buff*,size_t,scalar_t__) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_unicast (struct sk_buff*,int *,int ) ;
 scalar_t__ stub1 (struct net_device*,scalar_t__,int ) ;

__attribute__((used)) static int dcbnl_getapp(struct net_device *netdev, struct nlattr **tb,
                        u32 pid, u32 seq, u16 flags)
{
 struct sk_buff *dcbnl_skb;
 struct nlmsghdr *nlh;
 struct dcbmsg *dcb;
 struct nlattr *app_nest;
 struct nlattr *app_tb[DCB_APP_ATTR_MAX + 1];
 u16 id;
 u8 up, idtype;
 int ret = -EINVAL;

 if (!tb[DCB_ATTR_APP])
  goto out;

 ret = nla_parse_nested(app_tb, DCB_APP_ATTR_MAX, tb[DCB_ATTR_APP],
                        dcbnl_app_nest);
 if (ret)
  goto out;

 ret = -EINVAL;

 if ((!app_tb[DCB_APP_ATTR_IDTYPE]) ||
     (!app_tb[DCB_APP_ATTR_ID]))
  goto out;


 idtype = nla_get_u8(app_tb[DCB_APP_ATTR_IDTYPE]);
 if ((idtype != DCB_APP_IDTYPE_ETHTYPE) &&
     (idtype != DCB_APP_IDTYPE_PORTNUM))
  goto out;

 id = nla_get_u16(app_tb[DCB_APP_ATTR_ID]);

 if (netdev->dcbnl_ops->getapp) {
  up = netdev->dcbnl_ops->getapp(netdev, idtype, id);
 } else {
  struct dcb_app app = {
     .selector = idtype,
     .protocol = id,
         };
  up = dcb_getapp(netdev, &app);
 }


 dcbnl_skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!dcbnl_skb)
  goto out;

 nlh = NLMSG_NEW(dcbnl_skb, pid, seq, RTM_GETDCB, sizeof(*dcb), flags);
 dcb = NLMSG_DATA(nlh);
 dcb->dcb_family = AF_UNSPEC;
 dcb->cmd = DCB_CMD_GAPP;

 app_nest = nla_nest_start(dcbnl_skb, DCB_ATTR_APP);
 if (!app_nest)
  goto out_cancel;

 ret = nla_put_u8(dcbnl_skb, DCB_APP_ATTR_IDTYPE, idtype);
 if (ret)
  goto out_cancel;

 ret = nla_put_u16(dcbnl_skb, DCB_APP_ATTR_ID, id);
 if (ret)
  goto out_cancel;

 ret = nla_put_u8(dcbnl_skb, DCB_APP_ATTR_PRIORITY, up);
 if (ret)
  goto out_cancel;

 nla_nest_end(dcbnl_skb, app_nest);
 nlmsg_end(dcbnl_skb, nlh);

 ret = rtnl_unicast(dcbnl_skb, &init_net, pid);
 if (ret)
  goto nlmsg_failure;

 goto out;

out_cancel:
 nla_nest_cancel(dcbnl_skb, app_nest);
nlmsg_failure:
 kfree_skb(dcbnl_skb);
out:
 return ret;
}
