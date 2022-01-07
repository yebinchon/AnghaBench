
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibifa {int inbcast; int inmask; int inaddr; int ifindex; } ;
struct mibif {int name; } ;


 struct mibif* mib_find_if (int ) ;
 int mib_iflist_bad ;
 scalar_t__ siocaifaddr (int ,int ,int ,int ) ;
 scalar_t__ verify_ifa (int ,struct mibifa*) ;

int
mib_modify_ifa(struct mibifa *ifa)
{
 struct mibif *ifp;

 if ((ifp = mib_find_if(ifa->ifindex)) == ((void*)0)) {

  mib_iflist_bad = 1;
  return (-1);
 }

 if (siocaifaddr(ifp->name, ifa->inaddr, ifa->inmask, ifa->inbcast)) {

  mib_iflist_bad = 1;
  return (-1);
 }

 if (verify_ifa(ifp->name, ifa)) {

  mib_iflist_bad = 1;
  return (-1);
 }

 return (0);
}
