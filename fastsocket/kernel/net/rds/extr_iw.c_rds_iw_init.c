
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INIT_LIST_HEAD (int *) ;
 int RDS_INFO_IWARP_CONNECTIONS ;
 int ib_register_client (int *) ;
 int ib_unregister_client (int *) ;
 int rds_info_register_func (int ,int ) ;
 int rds_iw_client ;
 int rds_iw_devices ;
 int rds_iw_ic_info ;
 int rds_iw_recv_exit () ;
 int rds_iw_recv_init () ;
 int rds_iw_sysctl_exit () ;
 int rds_iw_sysctl_init () ;
 int rds_iw_transport ;
 int rds_trans_register (int *) ;

int rds_iw_init(void)
{
 int ret;

 INIT_LIST_HEAD(&rds_iw_devices);

 ret = ib_register_client(&rds_iw_client);
 if (ret)
  goto out;

 ret = rds_iw_sysctl_init();
 if (ret)
  goto out_ibreg;

 ret = rds_iw_recv_init();
 if (ret)
  goto out_sysctl;

 ret = rds_trans_register(&rds_iw_transport);
 if (ret)
  goto out_recv;

 rds_info_register_func(RDS_INFO_IWARP_CONNECTIONS, rds_iw_ic_info);

 goto out;

out_recv:
 rds_iw_recv_exit();
out_sysctl:
 rds_iw_sysctl_exit();
out_ibreg:
 ib_unregister_client(&rds_iw_client);
out:
 return ret;
}
