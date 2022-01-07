
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dn_neigh {scalar_t__ priority; int addr; } ;
struct dn_ifaddr {int ifa_local; } ;
struct TYPE_2__ {scalar_t__ priority; } ;
struct dn_dev {scalar_t__ uptime; TYPE_1__ parms; int router; } ;


 scalar_t__ DRDELAY ;
 scalar_t__ jiffies ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static int dn_am_i_a_router(struct dn_neigh *dn, struct dn_dev *dn_db, struct dn_ifaddr *ifa)
{

 if ((jiffies - dn_db->uptime) < DRDELAY)
  return 0;


 if (!dn_db->router)
  return 1;


 if (dn->priority < dn_db->parms.priority)
  return 1;


 if (dn->priority != dn_db->parms.priority)
  return 0;

 if (le16_to_cpu(dn->addr) < le16_to_cpu(ifa->ifa_local))
  return 1;

 return 0;
}
