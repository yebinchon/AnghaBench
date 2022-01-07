
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct dcbmsg {int cmd; int dcb_family; } ;
struct TYPE_2__ {int (* getnumtcs ) (struct net_device*,int,int *) ;} ;


 int AF_UNSPEC ;
 size_t DCB_ATTR_NUMTCS ;
 int DCB_CMD_GNUMTCS ;
 size_t DCB_NUMTCS_ATTR_ALL ;
 int DCB_NUMTCS_ATTR_MAX ;
 int EINVAL ;
 int GFP_KERNEL ;
 struct dcbmsg* NLMSG_DATA (struct nlmsghdr*) ;
 int NLMSG_DEFAULT_SIZE ;
 struct nlmsghdr* NLMSG_NEW (struct sk_buff*,int ,int ,int ,int,int ) ;
 int RTM_GETDCB ;
 int dcbnl_numtcs_nest ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,size_t) ;
 int nla_parse_nested (struct nlattr**,int,struct nlattr*,int ) ;
 int nla_put_u8 (struct sk_buff*,int,int ) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_unicast (struct sk_buff*,int *,int ) ;
 int stub1 (struct net_device*,int,int *) ;

__attribute__((used)) static int dcbnl_getnumtcs(struct net_device *netdev, struct nlattr **tb,
                           u32 pid, u32 seq, u16 flags)
{
 struct sk_buff *dcbnl_skb;
 struct nlmsghdr *nlh;
 struct dcbmsg *dcb;
 struct nlattr *data[DCB_NUMTCS_ATTR_MAX + 1], *nest;
 u8 value;
 int ret = -EINVAL;
 int i;
 int getall = 0;

 if (!tb[DCB_ATTR_NUMTCS] || !netdev->dcbnl_ops->getnumtcs)
  return ret;

 ret = nla_parse_nested(data, DCB_NUMTCS_ATTR_MAX, tb[DCB_ATTR_NUMTCS],
                        dcbnl_numtcs_nest);
 if (ret) {
  ret = -EINVAL;
  goto err_out;
 }

 dcbnl_skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!dcbnl_skb) {
  ret = -EINVAL;
  goto err_out;
 }

 nlh = NLMSG_NEW(dcbnl_skb, pid, seq, RTM_GETDCB, sizeof(*dcb), flags);

 dcb = NLMSG_DATA(nlh);
 dcb->dcb_family = AF_UNSPEC;
 dcb->cmd = DCB_CMD_GNUMTCS;

 nest = nla_nest_start(dcbnl_skb, DCB_ATTR_NUMTCS);
 if (!nest) {
  ret = -EINVAL;
  goto err;
 }

 if (data[DCB_NUMTCS_ATTR_ALL])
  getall = 1;

 for (i = DCB_NUMTCS_ATTR_ALL+1; i <= DCB_NUMTCS_ATTR_MAX; i++) {
  if (!getall && !data[i])
   continue;

  ret = netdev->dcbnl_ops->getnumtcs(netdev, i, &value);
  if (!ret) {
   ret = nla_put_u8(dcbnl_skb, i, value);

   if (ret) {
    nla_nest_cancel(dcbnl_skb, nest);
    ret = -EINVAL;
    goto err;
   }
  } else {
   goto err;
  }
 }
 nla_nest_end(dcbnl_skb, nest);

 nlmsg_end(dcbnl_skb, nlh);

 ret = rtnl_unicast(dcbnl_skb, &init_net, pid);
 if (ret) {
  ret = -EINVAL;
  goto err_out;
 }

 return 0;
nlmsg_failure:
err:
 kfree_skb(dcbnl_skb);
err_out:
 return ret;
}
