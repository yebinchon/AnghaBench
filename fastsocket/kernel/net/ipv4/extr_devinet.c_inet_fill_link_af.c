
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int * data; } ;
struct in_device {TYPE_1__ cnf; } ;


 int EMSGSIZE ;
 int ENODATA ;
 int IFLA_INET_CONF ;
 int IPV4_DEVCONF_MAX ;
 struct in_device* __in_dev_get_rtnl (struct net_device const*) ;
 scalar_t__ nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;

__attribute__((used)) static int inet_fill_link_af(struct sk_buff *skb, const struct net_device *dev)
{
 struct in_device *in_dev = __in_dev_get_rtnl(dev);
 struct nlattr *nla;
 int i;

 if (!in_dev)
  return -ENODATA;

 nla = nla_reserve(skb, IFLA_INET_CONF, IPV4_DEVCONF_MAX * 4);
 if (nla == ((void*)0))
  return -EMSGSIZE;

 for (i = 0; i < IPV4_DEVCONF_MAX; i++)
  ((u32 *) nla_data(nla))[i] = in_dev->cnf.data[i];

 return 0;
}
