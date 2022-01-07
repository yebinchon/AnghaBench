
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct rds_info_rdma_connection {int dummy; } ;
struct rds_info_lengths {int dummy; } ;
struct rds_info_iterator {int dummy; } ;


 int rds_for_each_conn_info (struct socket*,unsigned int,struct rds_info_iterator*,struct rds_info_lengths*,int ,int) ;
 int rds_ib_conn_info_visitor ;

__attribute__((used)) static void rds_ib_ic_info(struct socket *sock, unsigned int len,
      struct rds_info_iterator *iter,
      struct rds_info_lengths *lens)
{
 rds_for_each_conn_info(sock, len, iter, lens,
    rds_ib_conn_info_visitor,
    sizeof(struct rds_info_rdma_connection));
}
