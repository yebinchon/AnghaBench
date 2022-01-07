
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frags; } ;
struct net {TYPE_1__ ipv6; } ;
struct inet6_dev {int dummy; } ;


 int IP6_ADD_STATS_BH (struct net*,struct inet6_dev*,int ,int) ;
 int IPSTATS_MIB_REASMFAILS ;
 int inet_frag_evictor (int *,int *) ;
 int ip6_frags ;

__attribute__((used)) static void ip6_evictor(struct net *net, struct inet6_dev *idev)
{
 int evicted;

 evicted = inet_frag_evictor(&net->ipv6.frags, &ip6_frags);
 if (evicted)
  IP6_ADD_STATS_BH(net, idev, IPSTATS_MIB_REASMFAILS, evicted);
}
