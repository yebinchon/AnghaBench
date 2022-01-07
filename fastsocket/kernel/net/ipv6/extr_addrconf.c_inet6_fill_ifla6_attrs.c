
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int s6_addr; } ;
struct inet6_dev {int lock; TYPE_2__ token; int cnf; TYPE_1__* nd_parms; int tstamp; int if_flags; } ;
struct in6_addr {int dummy; } ;
struct ifla_cacheinfo {int retrans_time; int reachable_time; scalar_t__ tstamp; int max_reasm_len; } ;
typedef int s32 ;
typedef int ci ;
typedef scalar_t__ __u32 ;
struct TYPE_3__ {int retrans_time; int reachable_time; } ;


 int DEVCONF_MAX ;
 int EMSGSIZE ;
 int HZ ;
 int ICMP6_MIB_MAX ;
 int IFLA_INET6_CACHEINFO ;
 int IFLA_INET6_CONF ;
 int IFLA_INET6_FLAGS ;
 int IFLA_INET6_ICMP6STATS ;
 int IFLA_INET6_STATS ;
 int IFLA_INET6_TOKEN ;
 int INITIAL_JIFFIES ;
 int IPSTATS_MIB_MAX ;
 int IPV6_MAXPLEN ;
 int NLA_PUT (struct sk_buff*,int ,int,struct ifla_cacheinfo*) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int ) ;
 int TIME_DELTA (int ,int ) ;
 int ipv6_store_devconf (int *,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int snmp6_fill_stats (int ,struct inet6_dev*,int ,int ) ;

__attribute__((used)) static int inet6_fill_ifla6_attrs(struct sk_buff *skb, struct inet6_dev *idev)
{
 struct nlattr *nla;
 struct ifla_cacheinfo ci;

 NLA_PUT_U32(skb, IFLA_INET6_FLAGS, idev->if_flags);

 ci.max_reasm_len = IPV6_MAXPLEN;
 ci.tstamp = (__u32)(TIME_DELTA(idev->tstamp, INITIAL_JIFFIES) / HZ * 100
      + TIME_DELTA(idev->tstamp, INITIAL_JIFFIES) % HZ * 100 / HZ);
 ci.reachable_time = idev->nd_parms->reachable_time;
 ci.retrans_time = idev->nd_parms->retrans_time;
 NLA_PUT(skb, IFLA_INET6_CACHEINFO, sizeof(ci), &ci);

 nla = nla_reserve(skb, IFLA_INET6_CONF, DEVCONF_MAX * sizeof(s32));
 if (nla == ((void*)0))
  goto nla_put_failure;
 ipv6_store_devconf(&idev->cnf, nla_data(nla), nla_len(nla));



 nla = nla_reserve(skb, IFLA_INET6_STATS, IPSTATS_MIB_MAX * sizeof(u64));
 if (nla == ((void*)0))
  goto nla_put_failure;
 snmp6_fill_stats(nla_data(nla), idev, IFLA_INET6_STATS, nla_len(nla));

 nla = nla_reserve(skb, IFLA_INET6_ICMP6STATS, ICMP6_MIB_MAX * sizeof(u64));
 if (nla == ((void*)0))
  goto nla_put_failure;
 snmp6_fill_stats(nla_data(nla), idev, IFLA_INET6_ICMP6STATS, nla_len(nla));

 nla = nla_reserve(skb, IFLA_INET6_TOKEN, sizeof(struct in6_addr));
 if (nla == ((void*)0))
  goto nla_put_failure;
 read_lock_bh(&idev->lock);
 memcpy(nla_data(nla), idev->token.s6_addr, nla_len(nla));
 read_unlock_bh(&idev->lock);

 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
