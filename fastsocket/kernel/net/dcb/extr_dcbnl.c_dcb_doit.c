
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_flags; int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net_device {int dcbnl_ops; } ;
struct net {int dummy; } ;
struct dcbmsg {int cmd; } ;
struct TYPE_2__ {int pid; } ;


 size_t DCB_ATTR_IFNAME ;
 int DCB_ATTR_MAX ;
 int EINVAL ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 scalar_t__ NLMSG_DATA (struct nlmsghdr*) ;
 int dcbnl_bcn_getcfg (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_bcn_setcfg (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_cee_get (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_getapp (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_getcap (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_getdcbx (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_getfeatcfg (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_getnumtcs (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_getperm_hwaddr (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_getpfccfg (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_getpfcstate (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_getstate (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_ieee_del (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_ieee_get (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_ieee_set (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_pgrx_getcfg (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_pgrx_setcfg (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_pgtx_getcfg (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_pgtx_setcfg (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_rtnl_policy ;
 int dcbnl_setall (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_setapp (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_setdcbx (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_setfeatcfg (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_setnumtcs (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_setpfccfg (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_setpfcstate (struct net_device*,struct nlattr**,int ,int ,int ) ;
 int dcbnl_setstate (struct net_device*,struct nlattr**,int ,int ,int ) ;
 struct net_device* dev_get_by_name (int *,int ) ;
 int dev_put (struct net_device*) ;
 int init_net ;
 int net_eq (struct net*,int *) ;
 int nla_data (struct nlattr*) ;
 int nlmsg_parse (struct nlmsghdr*,int,struct nlattr**,int ,int ) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int dcb_doit(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
 struct net *net = sock_net(skb->sk);
 struct net_device *netdev;
 struct dcbmsg *dcb = (struct dcbmsg *)NLMSG_DATA(nlh);
 struct nlattr *tb[DCB_ATTR_MAX + 1];
 u32 pid = skb ? NETLINK_CB(skb).pid : 0;
 int ret = -EINVAL;

 if (!net_eq(net, &init_net))
  return -EINVAL;

 ret = nlmsg_parse(nlh, sizeof(*dcb), tb, DCB_ATTR_MAX,
     dcbnl_rtnl_policy);
 if (ret < 0)
  return ret;

 if (!tb[DCB_ATTR_IFNAME])
  return -EINVAL;

 netdev = dev_get_by_name(&init_net, nla_data(tb[DCB_ATTR_IFNAME]));
 if (!netdev)
  return -EINVAL;

 if (!netdev->dcbnl_ops)
  goto errout;

 switch (dcb->cmd) {
 case 145:
  ret = dcbnl_getstate(netdev, tb, pid, nlh->nlmsg_seq,
                       nlh->nlmsg_flags);
  goto out;
 case 141:
  ret = dcbnl_getpfccfg(netdev, tb, pid, nlh->nlmsg_seq,
                        nlh->nlmsg_flags);
  goto out;
 case 146:
  ret = dcbnl_getperm_hwaddr(netdev, tb, pid, nlh->nlmsg_seq,
                             nlh->nlmsg_flags);
  goto out;
 case 135:
  ret = dcbnl_pgtx_getcfg(netdev, tb, pid, nlh->nlmsg_seq,
                          nlh->nlmsg_flags);
  goto out;
 case 137:
  ret = dcbnl_pgrx_getcfg(netdev, tb, pid, nlh->nlmsg_seq,
                          nlh->nlmsg_flags);
  goto out;
 case 154:
  ret = dcbnl_bcn_getcfg(netdev, tb, pid, nlh->nlmsg_seq,
                         nlh->nlmsg_flags);
  goto out;
 case 128:
  ret = dcbnl_setstate(netdev, tb, pid, nlh->nlmsg_seq,
                       nlh->nlmsg_flags);
  goto out;
 case 139:
  ret = dcbnl_setpfccfg(netdev, tb, pid, nlh->nlmsg_seq,
                        nlh->nlmsg_flags);
  goto out;

 case 131:
  ret = dcbnl_setall(netdev, tb, pid, nlh->nlmsg_seq,
                     nlh->nlmsg_flags);
  goto out;
 case 134:
  ret = dcbnl_pgtx_setcfg(netdev, tb, pid, nlh->nlmsg_seq,
                          nlh->nlmsg_flags);
  goto out;
 case 136:
  ret = dcbnl_pgrx_setcfg(netdev, tb, pid, nlh->nlmsg_seq,
                          nlh->nlmsg_flags);
  goto out;
 case 150:
  ret = dcbnl_getcap(netdev, tb, pid, nlh->nlmsg_seq,
                     nlh->nlmsg_flags);
  goto out;
 case 147:
  ret = dcbnl_getnumtcs(netdev, tb, pid, nlh->nlmsg_seq,
                        nlh->nlmsg_flags);
  goto out;
 case 129:
  ret = dcbnl_setnumtcs(netdev, tb, pid, nlh->nlmsg_seq,
                        nlh->nlmsg_flags);
  goto out;
 case 140:
  ret = dcbnl_getpfcstate(netdev, tb, pid, nlh->nlmsg_seq,
                          nlh->nlmsg_flags);
  goto out;
 case 138:
  ret = dcbnl_setpfcstate(netdev, tb, pid, nlh->nlmsg_seq,
                          nlh->nlmsg_flags);
  goto out;
 case 153:
  ret = dcbnl_bcn_setcfg(netdev, tb, pid, nlh->nlmsg_seq,
                         nlh->nlmsg_flags);
  goto out;
 case 151:
  ret = dcbnl_getapp(netdev, tb, pid, nlh->nlmsg_seq,
                     nlh->nlmsg_flags);
  goto out;
 case 133:
  ret = dcbnl_setapp(netdev, tb, pid, nlh->nlmsg_seq,
                     nlh->nlmsg_flags);
  goto out;
 case 142:
  ret = dcbnl_ieee_set(netdev, tb, pid, nlh->nlmsg_seq,
         nlh->nlmsg_flags);
  goto out;
 case 143:
  ret = dcbnl_ieee_get(netdev, tb, pid, nlh->nlmsg_seq,
         nlh->nlmsg_flags);
  goto out;
 case 144:
  ret = dcbnl_ieee_del(netdev, tb, pid, nlh->nlmsg_seq,
         nlh->nlmsg_flags);
  goto out;
 case 149:
  ret = dcbnl_getdcbx(netdev, tb, pid, nlh->nlmsg_seq,
        nlh->nlmsg_flags);
  goto out;
 case 132:
  ret = dcbnl_setdcbx(netdev, tb, pid, nlh->nlmsg_seq,
        nlh->nlmsg_flags);
  goto out;
 case 148:
  ret = dcbnl_getfeatcfg(netdev, tb, pid, nlh->nlmsg_seq,
           nlh->nlmsg_flags);
  goto out;
 case 130:
  ret = dcbnl_setfeatcfg(netdev, tb, pid, nlh->nlmsg_seq,
           nlh->nlmsg_flags);
  goto out;
 case 152:
  ret = dcbnl_cee_get(netdev, tb, pid, nlh->nlmsg_seq,
        nlh->nlmsg_flags);
  goto out;
 default:
  goto errout;
 }
errout:
 ret = -EINVAL;
out:
 dev_put(netdev);
 return ret;
}
