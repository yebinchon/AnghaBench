
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_device {int dummy; } ;
typedef int __be32 ;


 int rds_ib_add_ipaddr (struct rds_ib_device*,int ) ;
 int rds_ib_dev_put (struct rds_ib_device*) ;
 struct rds_ib_device* rds_ib_get_device (int ) ;
 int rds_ib_remove_ipaddr (struct rds_ib_device*,int ) ;

int rds_ib_update_ipaddr(struct rds_ib_device *rds_ibdev, __be32 ipaddr)
{
 struct rds_ib_device *rds_ibdev_old;

 rds_ibdev_old = rds_ib_get_device(ipaddr);
 if (rds_ibdev_old) {
  rds_ib_remove_ipaddr(rds_ibdev_old, ipaddr);
  rds_ib_dev_put(rds_ibdev_old);
 }

 return rds_ib_add_ipaddr(rds_ibdev, ipaddr);
}
