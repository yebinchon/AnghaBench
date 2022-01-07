
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RDS_INFO_IB_CONNECTIONS ;
 int rds_ib_destroy_nodev_conns () ;
 int rds_ib_ic_info ;
 int rds_ib_recv_exit () ;
 int rds_ib_sysctl_exit () ;
 int rds_ib_transport ;
 int rds_ib_unregister_client () ;
 int rds_info_deregister_func (int ,int ) ;
 int rds_trans_unregister (int *) ;

void rds_ib_exit(void)
{
 rds_info_deregister_func(RDS_INFO_IB_CONNECTIONS, rds_ib_ic_info);
 rds_ib_unregister_client();
 rds_ib_destroy_nodev_conns();
 rds_ib_sysctl_exit();
 rds_ib_recv_exit();
 rds_trans_unregister(&rds_ib_transport);
}
