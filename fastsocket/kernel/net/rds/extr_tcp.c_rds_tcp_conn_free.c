
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_tcp_connection {int t_tcp_node; } ;


 int kmem_cache_free (int ,struct rds_tcp_connection*) ;
 int list_del (int *) ;
 int rds_tcp_conn_lock ;
 int rds_tcp_conn_slab ;
 int rdsdebug (char*,struct rds_tcp_connection*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rds_tcp_conn_free(void *arg)
{
 struct rds_tcp_connection *tc = arg;
 unsigned long flags;
 rdsdebug("freeing tc %p\n", tc);

 spin_lock_irqsave(&rds_tcp_conn_lock, flags);
 list_del(&tc->t_tcp_node);
 spin_unlock_irqrestore(&rds_tcp_conn_lock, flags);

 kmem_cache_free(rds_tcp_conn_slab, tc);
}
