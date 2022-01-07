
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {TYPE_2__* dev; } ;
struct nlmsghdr {int dummy; } ;
struct net {int dummy; } ;
struct nduseroptmsg {int nduseropt_opts_len; int nduseropt_icmp_code; int nduseropt_icmp_type; int nduseropt_ifindex; int nduseropt_family; } ;
struct nd_opt_hdr {int nd_opt_len; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int icmp6_code; int icmp6_type; } ;
struct TYPE_4__ {int ifindex; } ;
struct TYPE_3__ {int saddr; } ;


 int AF_INET6 ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int GFP_ATOMIC ;
 int NDUSEROPT_SRCADDR ;
 int NLA_PUT (struct sk_buff*,int ,int,int *) ;
 int NLMSG_ALIGN (int) ;
 int RTM_NEWNDUSEROPT ;
 int RTNLGRP_ND_USEROPT ;
 struct net* dev_net (TYPE_2__*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int memcpy (struct nduseroptmsg*,struct nd_opt_hdr*,int) ;
 int nla_total_size (int) ;
 struct nduseroptmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (size_t,int ) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 int rtnl_notify (struct sk_buff*,struct net*,int ,int ,int *,int ) ;
 int rtnl_set_sk_err (struct net*,int ,int) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;

__attribute__((used)) static void ndisc_ra_useropt(struct sk_buff *ra, struct nd_opt_hdr *opt)
{
 struct icmp6hdr *icmp6h = (struct icmp6hdr *)skb_transport_header(ra);
 struct sk_buff *skb;
 struct nlmsghdr *nlh;
 struct nduseroptmsg *ndmsg;
 struct net *net = dev_net(ra->dev);
 int err;
 int base_size = NLMSG_ALIGN(sizeof(struct nduseroptmsg)
        + (opt->nd_opt_len << 3));
 size_t msg_size = base_size + nla_total_size(sizeof(struct in6_addr));

 skb = nlmsg_new(msg_size, GFP_ATOMIC);
 if (skb == ((void*)0)) {
  err = -ENOBUFS;
  goto errout;
 }

 nlh = nlmsg_put(skb, 0, 0, RTM_NEWNDUSEROPT, base_size, 0);
 if (nlh == ((void*)0)) {
  goto nla_put_failure;
 }

 ndmsg = nlmsg_data(nlh);
 ndmsg->nduseropt_family = AF_INET6;
 ndmsg->nduseropt_ifindex = ra->dev->ifindex;
 ndmsg->nduseropt_icmp_type = icmp6h->icmp6_type;
 ndmsg->nduseropt_icmp_code = icmp6h->icmp6_code;
 ndmsg->nduseropt_opts_len = opt->nd_opt_len << 3;

 memcpy(ndmsg + 1, opt, opt->nd_opt_len << 3);

 NLA_PUT(skb, NDUSEROPT_SRCADDR, sizeof(struct in6_addr),
  &ipv6_hdr(ra)->saddr);
 nlmsg_end(skb, nlh);

 rtnl_notify(skb, net, 0, RTNLGRP_ND_USEROPT, ((void*)0), GFP_ATOMIC);
 return;

nla_put_failure:
 nlmsg_free(skb);
 err = -EMSGSIZE;
errout:
 rtnl_set_sk_err(net, RTNLGRP_ND_USEROPT, err);
}
