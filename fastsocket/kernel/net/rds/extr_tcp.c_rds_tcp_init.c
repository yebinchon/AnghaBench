
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_tcp_connection {int dummy; } ;


 int ENOMEM ;
 int RDS_INFO_TCP_SOCKETS ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int kmem_cache_destroy (int ) ;
 int rds_info_register_func (int ,int ) ;
 int rds_tcp_conn_slab ;
 int rds_tcp_listen_init () ;
 int rds_tcp_recv_exit () ;
 int rds_tcp_recv_init () ;
 int rds_tcp_tc_info ;
 int rds_tcp_transport ;
 int rds_trans_register (int *) ;
 int rds_trans_unregister (int *) ;

__attribute__((used)) static int rds_tcp_init(void)
{
 int ret;

 rds_tcp_conn_slab = kmem_cache_create("rds_tcp_connection",
           sizeof(struct rds_tcp_connection),
           0, 0, ((void*)0));
 if (!rds_tcp_conn_slab) {
  ret = -ENOMEM;
  goto out;
 }

 ret = rds_tcp_recv_init();
 if (ret)
  goto out_slab;

 ret = rds_trans_register(&rds_tcp_transport);
 if (ret)
  goto out_recv;

 ret = rds_tcp_listen_init();
 if (ret)
  goto out_register;

 rds_info_register_func(RDS_INFO_TCP_SOCKETS, rds_tcp_tc_info);

 goto out;

out_register:
 rds_trans_unregister(&rds_tcp_transport);
out_recv:
 rds_tcp_recv_exit();
out_slab:
 kmem_cache_destroy(rds_tcp_conn_slab);
out:
 return ret;
}
