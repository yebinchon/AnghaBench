
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcphdr {int dummy; } ;
struct TYPE_3__ {unsigned int ip6_rt_min_advmss; } ;
struct TYPE_4__ {TYPE_1__ sysctl; } ;
struct net {TYPE_2__ ipv6; } ;
struct ipv6hdr {int dummy; } ;


 int IPV6_MAXPLEN ;

__attribute__((used)) static inline unsigned int ipv6_advmss(struct net *net, unsigned int mtu)
{
 mtu -= sizeof(struct ipv6hdr) + sizeof(struct tcphdr);

 if (mtu < net->ipv6.sysctl.ip6_rt_min_advmss)
  mtu = net->ipv6.sysctl.ip6_rt_min_advmss;







 if (mtu > IPV6_MAXPLEN - sizeof(struct tcphdr))
  mtu = IPV6_MAXPLEN;
 return mtu;
}
