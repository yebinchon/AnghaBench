
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_incoming {scalar_t__ i_rdma_cookie; int i_saddr; struct rds_connection* i_conn; int i_item; int i_refcount; } ;
struct rds_connection {int dummy; } ;
typedef int __be32 ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;

void rds_inc_init(struct rds_incoming *inc, struct rds_connection *conn,
    __be32 saddr)
{
 atomic_set(&inc->i_refcount, 1);
 INIT_LIST_HEAD(&inc->i_item);
 inc->i_conn = conn;
 inc->i_saddr = saddr;
 inc->i_rdma_cookie = 0;
}
