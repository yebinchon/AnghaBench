
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_iw_connection {int iw_node; struct rds_connection* conn; int i_recv_ring; int i_send_ring; int i_ack_lock; int i_recv_mutex; int i_recv_tasklet; } ;
struct rds_connection {struct rds_iw_connection* c_transport_data; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int iw_nodev_conns ;
 int iw_nodev_conns_lock ;
 struct rds_iw_connection* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int rds_iw_recv_tasklet_fn ;
 int rds_iw_ring_init (int *,int ) ;
 int rds_iw_sysctl_max_recv_wr ;
 int rds_iw_sysctl_max_send_wr ;
 int rdsdebug (char*,struct rds_connection*,struct rds_iw_connection*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_init (int *,int ,unsigned long) ;

int rds_iw_conn_alloc(struct rds_connection *conn, gfp_t gfp)
{
 struct rds_iw_connection *ic;
 unsigned long flags;


 ic = kzalloc(sizeof(struct rds_iw_connection), gfp);
 if (!ic)
  return -ENOMEM;

 INIT_LIST_HEAD(&ic->iw_node);
 tasklet_init(&ic->i_recv_tasklet, rds_iw_recv_tasklet_fn,
       (unsigned long) ic);
 mutex_init(&ic->i_recv_mutex);

 spin_lock_init(&ic->i_ack_lock);






 rds_iw_ring_init(&ic->i_send_ring, rds_iw_sysctl_max_send_wr);
 rds_iw_ring_init(&ic->i_recv_ring, rds_iw_sysctl_max_recv_wr);

 ic->conn = conn;
 conn->c_transport_data = ic;

 spin_lock_irqsave(&iw_nodev_conns_lock, flags);
 list_add_tail(&ic->iw_node, &iw_nodev_conns);
 spin_unlock_irqrestore(&iw_nodev_conns_lock, flags);


 rdsdebug("conn %p conn ic %p\n", conn, conn->c_transport_data);
 return 0;
}
