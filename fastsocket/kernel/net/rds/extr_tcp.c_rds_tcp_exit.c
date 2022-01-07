
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RDS_INFO_TCP_SOCKETS ;
 int kmem_cache_destroy (int ) ;
 int rds_info_deregister_func (int ,int ) ;
 int rds_tcp_conn_slab ;
 int rds_tcp_destroy_conns () ;
 int rds_tcp_listen_stop () ;
 int rds_tcp_recv_exit () ;
 int rds_tcp_tc_info ;
 int rds_tcp_transport ;
 int rds_trans_unregister (int *) ;

__attribute__((used)) static void rds_tcp_exit(void)
{
 rds_info_deregister_func(RDS_INFO_TCP_SOCKETS, rds_tcp_tc_info);
 rds_tcp_listen_stop();
 rds_tcp_destroy_conns();
 rds_trans_unregister(&rds_tcp_transport);
 rds_tcp_recv_exit();
 kmem_cache_destroy(rds_tcp_conn_slab);
}
