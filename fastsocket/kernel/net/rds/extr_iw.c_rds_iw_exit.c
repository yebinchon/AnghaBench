
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RDS_INFO_IWARP_CONNECTIONS ;
 int ib_unregister_client (int *) ;
 int rds_info_deregister_func (int ,int ) ;
 int rds_iw_client ;
 int rds_iw_destroy_nodev_conns () ;
 int rds_iw_ic_info ;
 int rds_iw_recv_exit () ;
 int rds_iw_sysctl_exit () ;
 int rds_iw_transport ;
 int rds_trans_unregister (int *) ;

void rds_iw_exit(void)
{
 rds_info_deregister_func(RDS_INFO_IWARP_CONNECTIONS, rds_iw_ic_info);
 rds_iw_destroy_nodev_conns();
 ib_unregister_client(&rds_iw_client);
 rds_iw_sysctl_exit();
 rds_iw_recv_exit();
 rds_trans_unregister(&rds_iw_transport);
}
