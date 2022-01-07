
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct ifaddrmsg {int ifa_index; } ;
struct dn_ifaddr {int ifa_label; int ifa_local; struct dn_ifaddr* ifa_next; } ;
struct dn_dev {struct dn_ifaddr* ifa_list; } ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENODEV ;
 size_t IFA_LABEL ;
 size_t IFA_LOCAL ;
 int IFA_MAX ;
 struct dn_dev* dn_dev_by_index (int ) ;
 int dn_dev_del_ifa (struct dn_dev*,struct dn_ifaddr**,int) ;
 int dn_ifa_policy ;
 struct net init_net ;
 scalar_t__ nla_memcmp (struct nlattr*,int *,int) ;
 scalar_t__ nla_strcmp (struct nlattr*,int ) ;
 struct ifaddrmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse (struct nlmsghdr*,int,struct nlattr**,int ,int ) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int dn_nl_deladdr(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
 struct net *net = sock_net(skb->sk);
 struct nlattr *tb[IFA_MAX+1];
 struct dn_dev *dn_db;
 struct ifaddrmsg *ifm;
 struct dn_ifaddr *ifa, **ifap;
 int err = -EINVAL;

 if (net != &init_net)
  goto errout;

 err = nlmsg_parse(nlh, sizeof(*ifm), tb, IFA_MAX, dn_ifa_policy);
 if (err < 0)
  goto errout;

 err = -ENODEV;
 ifm = nlmsg_data(nlh);
 if ((dn_db = dn_dev_by_index(ifm->ifa_index)) == ((void*)0))
  goto errout;

 err = -EADDRNOTAVAIL;
 for (ifap = &dn_db->ifa_list; (ifa = *ifap); ifap = &ifa->ifa_next) {
  if (tb[IFA_LOCAL] &&
      nla_memcmp(tb[IFA_LOCAL], &ifa->ifa_local, 2))
   continue;

  if (tb[IFA_LABEL] && nla_strcmp(tb[IFA_LABEL], ifa->ifa_label))
   continue;

  dn_dev_del_ifa(dn_db, ifap, 1);
  return 0;
 }

errout:
 return err;
}
