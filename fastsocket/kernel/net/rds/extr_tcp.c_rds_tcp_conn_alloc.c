
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_tcp_connection {int t_tinc_hdr_rem; int t_tcp_node; scalar_t__ t_tinc_data_rem; int * t_tinc; int * t_sock; } ;
struct rds_header {int dummy; } ;
struct rds_connection {struct rds_tcp_connection* c_transport_data; } ;
typedef int gfp_t ;


 int ENOMEM ;
 struct rds_tcp_connection* kmem_cache_alloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int rds_tcp_conn_list ;
 int rds_tcp_conn_lock ;
 int rds_tcp_conn_slab ;
 int rdsdebug (char*,struct rds_tcp_connection*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int rds_tcp_conn_alloc(struct rds_connection *conn, gfp_t gfp)
{
 struct rds_tcp_connection *tc;

 tc = kmem_cache_alloc(rds_tcp_conn_slab, gfp);
 if (!tc)
  return -ENOMEM;

 tc->t_sock = ((void*)0);
 tc->t_tinc = ((void*)0);
 tc->t_tinc_hdr_rem = sizeof(struct rds_header);
 tc->t_tinc_data_rem = 0;

 conn->c_transport_data = tc;

 spin_lock_irq(&rds_tcp_conn_lock);
 list_add_tail(&tc->t_tcp_node, &rds_tcp_conn_list);
 spin_unlock_irq(&rds_tcp_conn_lock);

 rdsdebug("alloced tc %p\n", conn->c_transport_data);
 return 0;
}
