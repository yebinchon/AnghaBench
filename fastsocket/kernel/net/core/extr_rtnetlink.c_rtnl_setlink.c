
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ifinfomsg {scalar_t__ ifi_index; } ;


 int EINVAL ;
 int ENODEV ;
 size_t IFLA_IFNAME ;
 int IFLA_MAX ;
 int IFNAMSIZ ;
 struct net_device* dev_get_by_index (struct net*,scalar_t__) ;
 struct net_device* dev_get_by_name (struct net*,char*) ;
 int dev_put (struct net_device*) ;
 int do_setlink (struct net_device*,struct ifinfomsg*,struct nlattr**,char*,int ) ;
 int ifla_policy ;
 int nla_strlcpy (char*,struct nlattr*,int) ;
 struct ifinfomsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse (struct nlmsghdr*,int,struct nlattr**,int ,int ) ;
 struct net* sock_net (int ) ;
 int validate_linkmsg (struct net_device*,struct nlattr**) ;

__attribute__((used)) static int rtnl_setlink(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
 struct net *net = sock_net(skb->sk);
 struct ifinfomsg *ifm;
 struct net_device *dev;
 int err;
 struct nlattr *tb[IFLA_MAX+1];
 char ifname[IFNAMSIZ];

 err = nlmsg_parse(nlh, sizeof(*ifm), tb, IFLA_MAX, ifla_policy);
 if (err < 0)
  goto errout;

 if (tb[IFLA_IFNAME])
  nla_strlcpy(ifname, tb[IFLA_IFNAME], IFNAMSIZ);
 else
  ifname[0] = '\0';

 err = -EINVAL;
 ifm = nlmsg_data(nlh);
 if (ifm->ifi_index > 0)
  dev = dev_get_by_index(net, ifm->ifi_index);
 else if (tb[IFLA_IFNAME])
  dev = dev_get_by_name(net, ifname);
 else
  goto errout;

 if (dev == ((void*)0)) {
  err = -ENODEV;
  goto errout;
 }

 if ((err = validate_linkmsg(dev, tb)) < 0)
  goto errout_dev;

 err = do_setlink(dev, ifm, tb, ifname, 0);
errout_dev:
 dev_put(dev);
errout:
 return err;
}
