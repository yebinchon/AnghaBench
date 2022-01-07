
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int family; } ;


 int RDS_INFO_RECV_MESSAGES ;
 int RDS_INFO_SOCKETS ;
 int proto_unregister (int *) ;
 int rds_cong_exit () ;
 int rds_conn_exit () ;
 TYPE_1__ rds_family_ops ;
 int rds_info_deregister_func (int ,int ) ;
 int rds_page_exit () ;
 int rds_proto ;
 int rds_sock_inc_info ;
 int rds_sock_info ;
 int rds_stats_exit () ;
 int rds_sysctl_exit () ;
 int rds_threads_exit () ;
 int sock_unregister (int ) ;

__attribute__((used)) static void rds_exit(void)
{
 sock_unregister(rds_family_ops.family);
 proto_unregister(&rds_proto);
 rds_conn_exit();
 rds_cong_exit();
 rds_sysctl_exit();
 rds_threads_exit();
 rds_stats_exit();
 rds_page_exit();
 rds_info_deregister_func(RDS_INFO_SOCKETS, rds_sock_info);
 rds_info_deregister_func(RDS_INFO_RECV_MESSAGES, rds_sock_inc_info);
}
