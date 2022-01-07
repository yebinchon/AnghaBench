
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RDS_INFO_RECV_MESSAGES ;
 int RDS_INFO_SOCKETS ;
 int proto_register (int *,int) ;
 int proto_unregister (int *) ;
 int rds_cong_exit () ;
 int rds_conn_exit () ;
 int rds_conn_init () ;
 int rds_family_ops ;
 int rds_info_register_func (int ,int ) ;
 int rds_page_exit () ;
 int rds_proto ;
 int rds_sock_inc_info ;
 int rds_sock_info ;
 int rds_stats_exit () ;
 int rds_stats_init () ;
 int rds_sysctl_exit () ;
 int rds_sysctl_init () ;
 int rds_threads_exit () ;
 int rds_threads_init () ;
 int sock_register (int *) ;

__attribute__((used)) static int rds_init(void)
{
 int ret;

 ret = rds_conn_init();
 if (ret)
  goto out;
 ret = rds_threads_init();
 if (ret)
  goto out_conn;
 ret = rds_sysctl_init();
 if (ret)
  goto out_threads;
 ret = rds_stats_init();
 if (ret)
  goto out_sysctl;
 ret = proto_register(&rds_proto, 1);
 if (ret)
  goto out_stats;
 ret = sock_register(&rds_family_ops);
 if (ret)
  goto out_proto;

 rds_info_register_func(RDS_INFO_SOCKETS, rds_sock_info);
 rds_info_register_func(RDS_INFO_RECV_MESSAGES, rds_sock_inc_info);

 goto out;

out_proto:
 proto_unregister(&rds_proto);
out_stats:
 rds_stats_exit();
out_sysctl:
 rds_sysctl_exit();
out_threads:
 rds_threads_exit();
out_conn:
 rds_conn_exit();
 rds_cong_exit();
 rds_page_exit();
out:
 return ret;
}
