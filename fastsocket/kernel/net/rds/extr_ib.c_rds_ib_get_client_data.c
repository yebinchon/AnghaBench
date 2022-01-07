
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_device {int refcount; } ;
struct ib_device {int dummy; } ;


 int atomic_inc (int *) ;
 struct rds_ib_device* ib_get_client_data (struct ib_device*,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rds_ib_client ;

struct rds_ib_device *rds_ib_get_client_data(struct ib_device *device)
{
 struct rds_ib_device *rds_ibdev;

 rcu_read_lock();
 rds_ibdev = ib_get_client_data(device, &rds_ib_client);
 if (rds_ibdev)
  atomic_inc(&rds_ibdev->refcount);
 rcu_read_unlock();
 return rds_ibdev;
}
