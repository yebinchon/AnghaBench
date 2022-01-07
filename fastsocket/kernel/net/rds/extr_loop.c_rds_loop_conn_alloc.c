
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_loop_connection {int loop_node; struct rds_connection* conn; } ;
struct rds_connection {struct rds_loop_connection* c_transport_data; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 struct rds_loop_connection* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int loop_conns ;
 int loop_conns_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rds_loop_conn_alloc(struct rds_connection *conn, gfp_t gfp)
{
 struct rds_loop_connection *lc;
 unsigned long flags;

 lc = kzalloc(sizeof(struct rds_loop_connection), gfp);
 if (!lc)
  return -ENOMEM;

 INIT_LIST_HEAD(&lc->loop_node);
 lc->conn = conn;
 conn->c_transport_data = lc;

 spin_lock_irqsave(&loop_conns_lock, flags);
 list_add_tail(&lc->loop_node, &loop_conns);
 spin_unlock_irqrestore(&loop_conns_lock, flags);

 return 0;
}
