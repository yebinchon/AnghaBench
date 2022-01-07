
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_device {int list; } ;
struct ib_device {int dummy; } ;


 int down_write (int *) ;
 struct rds_ib_device* ib_get_client_data (struct ib_device*,int *) ;
 int ib_set_client_data (struct ib_device*,int *,int *) ;
 int list_del_rcu (int *) ;
 int rds_ib_client ;
 int rds_ib_dev_put (struct rds_ib_device*) ;
 int rds_ib_dev_shutdown (struct rds_ib_device*) ;
 int rds_ib_devices_lock ;
 int synchronize_rcu () ;
 int up_write (int *) ;

__attribute__((used)) static void rds_ib_remove_one(struct ib_device *device)
{
 struct rds_ib_device *rds_ibdev;

 rds_ibdev = ib_get_client_data(device, &rds_ib_client);
 if (!rds_ibdev)
  return;

 rds_ib_dev_shutdown(rds_ibdev);


 ib_set_client_data(device, &rds_ib_client, ((void*)0));

 down_write(&rds_ib_devices_lock);
 list_del_rcu(&rds_ibdev->list);
 up_write(&rds_ib_devices_lock);






 synchronize_rcu();
 rds_ib_dev_put(rds_ibdev);
 rds_ib_dev_put(rds_ibdev);
}
