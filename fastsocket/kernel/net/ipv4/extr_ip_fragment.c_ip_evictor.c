
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frags; } ;
struct net {TYPE_1__ ipv4; } ;


 int IPSTATS_MIB_REASMFAILS ;
 int IP_ADD_STATS_BH (struct net*,int ,int) ;
 int inet_frag_evictor (int *,int *) ;
 int ip4_frags ;

__attribute__((used)) static void ip_evictor(struct net *net)
{
 int evicted;

 evicted = inet_frag_evictor(&net->ipv4.frags, &ip4_frags);
 if (evicted)
  IP_ADD_STATS_BH(net, IPSTATS_MIB_REASMFAILS, evicted);
}
