
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct in_ifaddr {scalar_t__ ifa_local; scalar_t__ ifa_prefixlen; int ifa_label; struct in_ifaddr* ifa_next; } ;
struct in_device {struct in_ifaddr* ifa_list; } ;
struct ifaddrmsg {scalar_t__ ifa_prefixlen; int ifa_index; } ;
struct TYPE_2__ {int pid; } ;


 int ASSERT_RTNL () ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENODEV ;
 size_t IFA_ADDRESS ;
 size_t IFA_LABEL ;
 size_t IFA_LOCAL ;
 int IFA_MAX ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int __in_dev_put (struct in_device*) ;
 int __inet_del_ifa (struct in_device*,struct in_ifaddr**,int,struct nlmsghdr*,int ) ;
 int ifa_ipv4_policy ;
 int inet_ifa_match (scalar_t__,struct in_ifaddr*) ;
 struct in_device* inetdev_by_index (struct net*,int ) ;
 scalar_t__ nla_get_be32 (struct nlattr*) ;
 scalar_t__ nla_strcmp (struct nlattr*,int ) ;
 struct ifaddrmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse (struct nlmsghdr*,int,struct nlattr**,int ,int ) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int inet_rtm_deladdr(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
 struct net *net = sock_net(skb->sk);
 struct nlattr *tb[IFA_MAX+1];
 struct in_device *in_dev;
 struct ifaddrmsg *ifm;
 struct in_ifaddr *ifa, **ifap;
 int err = -EINVAL;

 ASSERT_RTNL();

 err = nlmsg_parse(nlh, sizeof(*ifm), tb, IFA_MAX, ifa_ipv4_policy);
 if (err < 0)
  goto errout;

 ifm = nlmsg_data(nlh);
 in_dev = inetdev_by_index(net, ifm->ifa_index);
 if (in_dev == ((void*)0)) {
  err = -ENODEV;
  goto errout;
 }

 __in_dev_put(in_dev);

 for (ifap = &in_dev->ifa_list; (ifa = *ifap) != ((void*)0);
      ifap = &ifa->ifa_next) {
  if (tb[IFA_LOCAL] &&
      ifa->ifa_local != nla_get_be32(tb[IFA_LOCAL]))
   continue;

  if (tb[IFA_LABEL] && nla_strcmp(tb[IFA_LABEL], ifa->ifa_label))
   continue;

  if (tb[IFA_ADDRESS] &&
      (ifm->ifa_prefixlen != ifa->ifa_prefixlen ||
      !inet_ifa_match(nla_get_be32(tb[IFA_ADDRESS]), ifa)))
   continue;

  __inet_del_ifa(in_dev, ifap, 1, nlh, NETLINK_CB(skb).pid);
  return 0;
 }

 err = -EADDRNOTAVAIL;
errout:
 return err;
}
