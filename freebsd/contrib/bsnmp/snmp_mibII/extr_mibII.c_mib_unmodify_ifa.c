
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibifa {int inbcast; int inmask; int inaddr; int ifindex; } ;
struct mibif {int name; } ;


 struct mibif* mib_find_if (int ) ;
 int mib_iflist_bad ;
 scalar_t__ siocaifaddr (int ,int ,int ,int ) ;

void
mib_unmodify_ifa(struct mibifa *ifa)
{
 struct mibif *ifp;

 if ((ifp = mib_find_if(ifa->ifindex)) == ((void*)0)) {

  mib_iflist_bad = 1;
  return;
 }

 if (siocaifaddr(ifp->name, ifa->inaddr, ifa->inmask, ifa->inbcast)) {

  mib_iflist_bad = 1;
  return;
 }
}
