
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_workqueue (int ) ;
 int ib_unregister_client (int *) ;
 int rds_ib_client ;
 int rds_wq ;

__attribute__((used)) static void rds_ib_unregister_client(void)
{
 ib_unregister_client(&rds_ib_client);

 flush_workqueue(rds_wq);
}
