
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibifa {int flags; int inbcast; int inmask; int inaddr; int ifindex; } ;
struct mibif {int name; } ;


 int MIBIFA_DESTROYED ;
 struct mibif* mib_find_if (int ) ;
 scalar_t__ siocaifaddr (int ,int ,int ,int ) ;

void
mib_undestroy_ifa(struct mibifa *ifa)
{
 struct mibif *ifp;

 if ((ifp = mib_find_if(ifa->ifindex)) == ((void*)0))

  return;

 if (siocaifaddr(ifp->name, ifa->inaddr, ifa->inmask, ifa->inbcast))

  return;

 ifa->flags &= ~MIBIFA_DESTROYED;
}
