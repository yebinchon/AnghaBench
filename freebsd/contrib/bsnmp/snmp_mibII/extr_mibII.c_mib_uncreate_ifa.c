
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibifa {int inaddr; int ifindex; } ;
struct mibif {int name; } ;


 int destroy_ifa (struct mibifa*) ;
 struct mibif* mib_find_if (int ) ;
 int mib_iflist_bad ;
 scalar_t__ siocdifaddr (int ,int ) ;

void
mib_uncreate_ifa(struct mibifa *ifa)
{
 struct mibif *ifp;

 if ((ifp = mib_find_if(ifa->ifindex)) == ((void*)0)) {

  mib_iflist_bad = 1;
  return;
 }
 if (siocdifaddr(ifp->name, ifa->inaddr)) {

  mib_iflist_bad = 1;
  return;
 }

 destroy_ifa(ifa);
}
