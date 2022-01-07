
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mibifa {int flags; int inaddr; int ifindex; } ;
struct mibif {int name; } ;


 int LOG_ERR ;
 int MIBIFA_DESTROYED ;
 struct mibif* mib_find_if (int ) ;
 int mib_iflist_bad ;
 scalar_t__ siocdifaddr (int ,int ) ;
 int syslog (int ,char*) ;

int
mib_destroy_ifa(struct mibifa *ifa)
{
 struct mibif *ifp;

 if ((ifp = mib_find_if(ifa->ifindex)) == ((void*)0)) {

  mib_iflist_bad = 1;
  return (-1);
 }
 if (siocdifaddr(ifp->name, ifa->inaddr)) {

  syslog(LOG_ERR, "SIOCDIFADDR: %m");
  mib_iflist_bad = 1;
  return (-1);
 }
 ifa->flags |= MIBIFA_DESTROYED;
 return (0);
}
