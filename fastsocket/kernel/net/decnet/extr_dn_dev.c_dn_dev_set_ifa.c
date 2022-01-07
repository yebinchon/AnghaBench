
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; struct dn_dev* dn_ptr; } ;
struct dn_ifaddr {int ifa_scope; struct dn_dev* ifa_dev; } ;
struct dn_dev {int dummy; } ;


 int IFF_LOOPBACK ;
 int RT_SCOPE_HOST ;
 struct dn_dev* dn_dev_create (struct net_device*,int*) ;
 int dn_dev_free_ifa (struct dn_ifaddr*) ;
 int dn_dev_insert_ifa (struct dn_dev*,struct dn_ifaddr*) ;

__attribute__((used)) static int dn_dev_set_ifa(struct net_device *dev, struct dn_ifaddr *ifa)
{
 struct dn_dev *dn_db = dev->dn_ptr;
 int rv;

 if (dn_db == ((void*)0)) {
  int err;
  dn_db = dn_dev_create(dev, &err);
  if (dn_db == ((void*)0))
   return err;
 }

 ifa->ifa_dev = dn_db;

 if (dev->flags & IFF_LOOPBACK)
  ifa->ifa_scope = RT_SCOPE_HOST;

 rv = dn_dev_insert_ifa(dn_db, ifa);
 if (rv)
  dn_dev_free_ifa(ifa);
 return rv;
}
