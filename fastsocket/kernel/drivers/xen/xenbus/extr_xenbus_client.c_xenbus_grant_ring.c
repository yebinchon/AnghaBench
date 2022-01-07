
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int otherend_id; } ;


 int gnttab_grant_foreign_access (int ,unsigned long,int ) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*) ;

int xenbus_grant_ring(struct xenbus_device *dev, unsigned long ring_mfn)
{
 int err = gnttab_grant_foreign_access(dev->otherend_id, ring_mfn, 0);
 if (err < 0)
  xenbus_dev_fatal(dev, err, "granting access to ring page");
 return err;
}
