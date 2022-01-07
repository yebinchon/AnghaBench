
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
struct TYPE_2__ {int (* getbcncfg ) (struct net_device*,int,int *) ;int (* getbcnrp ) (struct net_device*,int,int *) ;} ;


 int AF_UNSPEC ;
 size_t DCB_ATTR_BCN ;
 size_t DCB_BCN_ATTR_ALL ;
 int DCB_BCN_ATTR_BCNA_0 ;
 int DCB_BCN_ATTR_MAX ;
 int DCB_BCN_ATTR_RI ;
 int DCB_BCN_ATTR_RP_0 ;
 int DCB_BCN_ATTR_RP_7 ;
 int DCB_CMD_BCN_GCFG ;
 int EINVAL ;
 int GFP_KERNEL ;
 struct dcbmsg* NLMSG_DATA (struct nlmsghdr*) ;
 int NLMSG_DEFAULT_SIZE ;
 struct nlmsghdr* NLMSG_NEW (struct sk_buff*,int ,int ,int ,int,int ) ;
 int RTM_GETDCB ;
 int dcbnl_bcn_nest ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,size_t) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 int nla_put_u32 (struct sk_buff*,int,int ) ;
 int nla_put_u8 (struct sk_buff*,int,int ) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_unicast (struct sk_buff*,int *,int ) ;
 int stub1 (struct net_device*,int,int *) ;
 int stub2 (struct net_device*,int,int *) ;

__attribute__((used)) static int dcbnl_bcn_getcfg(struct net_device *netdev, struct nlattr **tb,
                            u32 pid, u32 seq, u16 flags)
{
 struct sk_buff *dcbnl_skb;
 struct nlmsghdr *nlh;
 struct dcbmsg *dcb;
 struct nlattr *bcn_nest;
 struct nlattr *bcn_tb[DCB_BCN_ATTR_MAX + 1];
 u8 value_byte;
 u32 value_integer;
 int ret = -EINVAL;
 bool getall = 0;
 int i;

 if (!tb[DCB_ATTR_BCN] || !netdev->dcbnl_ops->getbcnrp ||
     !netdev->dcbnl_ops->getbcncfg)
  return ret;

 ret = nla_parse_nested(bcn_tb, DCB_BCN_ATTR_MAX,
                        tb[DCB_ATTR_BCN], dcbnl_bcn_nest);

 if (ret)
  goto err_out;

 dcbnl_skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!dcbnl_skb)
  goto err_out;

 nlh = NLMSG_NEW(dcbnl_skb, pid, seq, RTM_GETDCB, sizeof(*dcb), flags);

 dcb = NLMSG_DATA(nlh);
 dcb->dcb_family = AF_UNSPEC;
 dcb->cmd = DCB_CMD_BCN_GCFG;

 bcn_nest = nla_nest_start(dcbnl_skb, DCB_ATTR_BCN);
 if (!bcn_nest)
  goto err;

 if (bcn_tb[DCB_BCN_ATTR_ALL])
  getall = 1;

 for (i = DCB_BCN_ATTR_RP_0; i <= DCB_BCN_ATTR_RP_7; i++) {
  if (!getall && !bcn_tb[i])
   continue;

  netdev->dcbnl_ops->getbcnrp(netdev, i - DCB_BCN_ATTR_RP_0,
                              &value_byte);
  ret = nla_put_u8(dcbnl_skb, i, value_byte);
  if (ret)
   goto err_bcn;
 }

 for (i = DCB_BCN_ATTR_BCNA_0; i <= DCB_BCN_ATTR_RI; i++) {
  if (!getall && !bcn_tb[i])
   continue;

  netdev->dcbnl_ops->getbcncfg(netdev, i,
                               &value_integer);
  ret = nla_put_u32(dcbnl_skb, i, value_integer);
  if (ret)
   goto err_bcn;
 }

 nla_nest_end(dcbnl_skb, bcn_nest);

 nlmsg_end(dcbnl_skb, nlh);

 ret = rtnl_unicast(dcbnl_skb, &init_net, pid);
 if (ret)
  goto err_out;

 return 0;

err_bcn:
 nla_nest_cancel(dcbnl_skb, bcn_nest);
nlmsg_failure:
err:
 kfree_skb(dcbnl_skb);
err_out:
 ret = -EINVAL;
 return ret;
}
