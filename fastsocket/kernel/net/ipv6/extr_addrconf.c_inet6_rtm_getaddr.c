
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet6_ifaddr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifaddrmsg {scalar_t__ ifa_index; } ;
struct TYPE_2__ {int pid; } ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 size_t IFA_ADDRESS ;
 size_t IFA_LOCAL ;
 int IFA_MAX ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int RTM_NEWADDR ;
 int WARN_ON (int) ;
 struct net_device* __dev_get_by_index (struct net*,scalar_t__) ;
 struct in6_addr* extract_addr (struct nlattr*,struct nlattr*) ;
 int ifa_ipv6_policy ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 int inet6_fill_ifaddr (struct sk_buff*,struct inet6_ifaddr*,int ,int ,int ,int ) ;
 int inet6_ifaddr_msgsize () ;
 struct inet6_ifaddr* ipv6_get_ifaddr (struct net*,struct in6_addr*,struct net_device*,int) ;
 int kfree_skb (struct sk_buff*) ;
 struct ifaddrmsg* nlmsg_data (struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int nlmsg_parse (struct nlmsghdr*,int,struct nlattr**,int ,int ) ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int inet6_rtm_getaddr(struct sk_buff *in_skb, struct nlmsghdr* nlh,
        void *arg)
{
 struct net *net = sock_net(in_skb->sk);
 struct ifaddrmsg *ifm;
 struct nlattr *tb[IFA_MAX+1];
 struct in6_addr *addr = ((void*)0);
 struct net_device *dev = ((void*)0);
 struct inet6_ifaddr *ifa;
 struct sk_buff *skb;
 int err;

 err = nlmsg_parse(nlh, sizeof(*ifm), tb, IFA_MAX, ifa_ipv6_policy);
 if (err < 0)
  goto errout;

 addr = extract_addr(tb[IFA_ADDRESS], tb[IFA_LOCAL]);
 if (addr == ((void*)0)) {
  err = -EINVAL;
  goto errout;
 }

 ifm = nlmsg_data(nlh);
 if (ifm->ifa_index)
  dev = __dev_get_by_index(net, ifm->ifa_index);

 if ((ifa = ipv6_get_ifaddr(net, addr, dev, 1)) == ((void*)0)) {
  err = -EADDRNOTAVAIL;
  goto errout;
 }

 if ((skb = nlmsg_new(inet6_ifaddr_msgsize(), GFP_KERNEL)) == ((void*)0)) {
  err = -ENOBUFS;
  goto errout_ifa;
 }

 err = inet6_fill_ifaddr(skb, ifa, NETLINK_CB(in_skb).pid,
    nlh->nlmsg_seq, RTM_NEWADDR, 0);
 if (err < 0) {

  WARN_ON(err == -EMSGSIZE);
  kfree_skb(skb);
  goto errout_ifa;
 }
 err = rtnl_unicast(skb, net, NETLINK_CB(in_skb).pid);
errout_ifa:
 in6_ifa_put(ifa);
errout:
 return err;
}
