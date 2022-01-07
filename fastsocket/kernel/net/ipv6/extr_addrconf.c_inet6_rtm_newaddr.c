
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet6_ifaddr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifaddrmsg {int ifa_flags; int ifa_prefixlen; int ifa_index; } ;
struct ifa_cacheinfo {int ifa_prefered; int ifa_valid; } ;


 int EEXIST ;
 int EINVAL ;
 int ENODEV ;
 size_t IFA_ADDRESS ;
 size_t IFA_CACHEINFO ;
 int IFA_F_HOMEADDRESS ;
 int IFA_F_NODAD ;
 size_t IFA_LOCAL ;
 int IFA_MAX ;
 int INFINITY_LIFE_TIME ;
 int NLM_F_EXCL ;
 int NLM_F_REPLACE ;
 struct net_device* __dev_get_by_index (struct net*,int ) ;
 struct in6_addr* extract_addr (struct nlattr*,struct nlattr*) ;
 int ifa_ipv6_policy ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 int inet6_addr_add (struct net*,int ,struct in6_addr*,int ,int,int ,int ) ;
 int inet6_addr_modify (struct inet6_ifaddr*,int,int ,int ) ;
 struct inet6_ifaddr* ipv6_get_ifaddr (struct net*,struct in6_addr*,struct net_device*,int) ;
 struct ifa_cacheinfo* nla_data (struct nlattr*) ;
 struct ifaddrmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse (struct nlmsghdr*,int,struct nlattr**,int ,int ) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int
inet6_rtm_newaddr(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
 struct net *net = sock_net(skb->sk);
 struct ifaddrmsg *ifm;
 struct nlattr *tb[IFA_MAX+1];
 struct in6_addr *pfx;
 struct inet6_ifaddr *ifa;
 struct net_device *dev;
 u32 valid_lft = INFINITY_LIFE_TIME, preferred_lft = INFINITY_LIFE_TIME;
 u8 ifa_flags;
 int err;

 err = nlmsg_parse(nlh, sizeof(*ifm), tb, IFA_MAX, ifa_ipv6_policy);
 if (err < 0)
  return err;

 ifm = nlmsg_data(nlh);
 pfx = extract_addr(tb[IFA_ADDRESS], tb[IFA_LOCAL]);
 if (pfx == ((void*)0))
  return -EINVAL;

 if (tb[IFA_CACHEINFO]) {
  struct ifa_cacheinfo *ci;

  ci = nla_data(tb[IFA_CACHEINFO]);
  valid_lft = ci->ifa_valid;
  preferred_lft = ci->ifa_prefered;
 } else {
  preferred_lft = INFINITY_LIFE_TIME;
  valid_lft = INFINITY_LIFE_TIME;
 }

 dev = __dev_get_by_index(net, ifm->ifa_index);
 if (dev == ((void*)0))
  return -ENODEV;


 ifa_flags = ifm->ifa_flags & (IFA_F_NODAD | IFA_F_HOMEADDRESS);

 ifa = ipv6_get_ifaddr(net, pfx, dev, 1);
 if (ifa == ((void*)0)) {




  return inet6_addr_add(net, ifm->ifa_index, pfx,
          ifm->ifa_prefixlen, ifa_flags,
          preferred_lft, valid_lft);
 }

 if (nlh->nlmsg_flags & NLM_F_EXCL ||
     !(nlh->nlmsg_flags & NLM_F_REPLACE))
  err = -EEXIST;
 else
  err = inet6_addr_modify(ifa, ifa_flags, preferred_lft, valid_lft);

 in6_ifa_put(ifa);

 return err;
}
