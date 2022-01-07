
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
typedef int perm_addr ;
struct TYPE_2__ {int (* getpermhwaddr ) (struct net_device*,int *) ;} ;


 int AF_UNSPEC ;
 int DCB_ATTR_PERM_HWADDR ;
 int DCB_CMD_GPERM_HWADDR ;
 int EINVAL ;
 int GFP_KERNEL ;
 int MAX_ADDR_LEN ;
 struct dcbmsg* NLMSG_DATA (struct nlmsghdr*) ;
 int NLMSG_DEFAULT_SIZE ;
 struct nlmsghdr* NLMSG_NEW (struct sk_buff*,int ,int ,int ,int,int ) ;
 int RTM_GETDCB ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int memset (int *,int ,int) ;
 int nla_put (struct sk_buff*,int ,int,int *) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_unicast (struct sk_buff*,int *,int ) ;
 int stub1 (struct net_device*,int *) ;

__attribute__((used)) static int dcbnl_getperm_hwaddr(struct net_device *netdev, struct nlattr **tb,
                                u32 pid, u32 seq, u16 flags)
{
 struct sk_buff *dcbnl_skb;
 struct nlmsghdr *nlh;
 struct dcbmsg *dcb;
 u8 perm_addr[MAX_ADDR_LEN];
 int ret = -EINVAL;

 if (!netdev->dcbnl_ops->getpermhwaddr)
  return ret;

 dcbnl_skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!dcbnl_skb)
  goto err_out;

 nlh = NLMSG_NEW(dcbnl_skb, pid, seq, RTM_GETDCB, sizeof(*dcb), flags);

 dcb = NLMSG_DATA(nlh);
 dcb->dcb_family = AF_UNSPEC;
 dcb->cmd = DCB_CMD_GPERM_HWADDR;

 memset(perm_addr, 0, sizeof(perm_addr));
 netdev->dcbnl_ops->getpermhwaddr(netdev, perm_addr);

 ret = nla_put(dcbnl_skb, DCB_ATTR_PERM_HWADDR, sizeof(perm_addr),
               perm_addr);

 nlmsg_end(dcbnl_skb, nlh);

 ret = rtnl_unicast(dcbnl_skb, &init_net, pid);
 if (ret)
  goto err_out;

 return 0;

nlmsg_failure:
 kfree_skb(dcbnl_skb);
err_out:
 return -EINVAL;
}
