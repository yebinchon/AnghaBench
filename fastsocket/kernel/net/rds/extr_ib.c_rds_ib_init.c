
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INIT_LIST_HEAD (int *) ;
 int RDS_INFO_IB_CONNECTIONS ;
 int ib_register_client (int *) ;
 int rds_ib_client ;
 int rds_ib_devices ;
 int rds_ib_ic_info ;
 int rds_ib_recv_exit () ;
 int rds_ib_recv_init () ;
 int rds_ib_sysctl_exit () ;
 int rds_ib_sysctl_init () ;
 int rds_ib_transport ;
 int rds_ib_unregister_client () ;
 int rds_info_register_func (int ,int ) ;
 int rds_trans_register (int *) ;

int rds_ib_init(void)
{
 int ret;

 INIT_LIST_HEAD(&rds_ib_devices);

 ret = ib_register_client(&rds_ib_client);
 if (ret)
  goto out;

 ret = rds_ib_sysctl_init();
 if (ret)
  goto out_ibreg;

 ret = rds_ib_recv_init();
 if (ret)
  goto out_sysctl;

 ret = rds_trans_register(&rds_ib_transport);
 if (ret)
  goto out_recv;

 rds_info_register_func(RDS_INFO_IB_CONNECTIONS, rds_ib_ic_info);

 goto out;

out_recv:
 rds_ib_recv_exit();
out_sysctl:
 rds_ib_sysctl_exit();
out_ibreg:
 rds_ib_unregister_client();
out:
 return ret;
}
