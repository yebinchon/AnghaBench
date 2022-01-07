
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct neigh_parms {scalar_t__ ucast_probes; TYPE_1__* tbl; scalar_t__ mcast_probes; } ;
struct TYPE_2__ {scalar_t__ family; } ;


 scalar_t__ AF_INET6 ;

int hippi_neigh_setup_dev(struct net_device *dev, struct neigh_parms *p)
{

 p->mcast_probes = 0;





 if (p->tbl->family != AF_INET6)
  p->ucast_probes = 0;
 return 0;
}
