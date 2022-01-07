
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rdma_destroy_id (int *) ;
 int * rds_rdma_listen_id ;
 int rdsdebug (char*,int *) ;

__attribute__((used)) static void rds_rdma_listen_stop(void)
{
 if (rds_rdma_listen_id) {
  rdsdebug("cm %p\n", rds_rdma_listen_id);
  rdma_destroy_id(rds_rdma_listen_id);
  rds_rdma_listen_id = ((void*)0);
 }
}
