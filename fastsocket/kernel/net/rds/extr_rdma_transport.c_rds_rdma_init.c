
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rds_ib_init () ;
 int rds_iw_exit () ;
 int rds_iw_init () ;
 int rds_rdma_listen_init () ;
 int rds_rdma_listen_stop () ;

__attribute__((used)) static int rds_rdma_init(void)
{
 int ret;

 ret = rds_rdma_listen_init();
 if (ret)
  goto out;

 ret = rds_iw_init();
 if (ret)
  goto err_iw_init;

 ret = rds_ib_init();
 if (ret)
  goto err_ib_init;

 goto out;

err_ib_init:
 rds_iw_exit();
err_iw_init:
 rds_rdma_listen_stop();
out:
 return ret;
}
