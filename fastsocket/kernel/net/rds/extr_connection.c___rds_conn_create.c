
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_transport {int (* conn_alloc ) (struct rds_connection*,int ) ;char* t_name; int (* conn_free ) (int ) ;scalar_t__ t_prefer_loopback; } ;
struct rds_connection {int c_loopback; int c_next_tx_seq; int c_hash_node; int c_transport_data; struct rds_connection* c_passive; scalar_t__ c_flags; int c_cm_lock; int c_down_w; int c_conn_w; int c_recv_w; int c_send_w; scalar_t__ c_reconnect_jiffies; int c_state; struct rds_transport* c_trans; int c_retrans; int c_send_queue; int c_waitq; int c_lock; void* c_faddr; void* c_laddr; } ;
struct hlist_head {int dummy; } ;
typedef int gfp_t ;
typedef void* __be32 ;


 int ENOMEM ;
 struct rds_connection* ERR_PTR (int) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int RDS_CONN_DOWN ;
 int atomic_set (int *,int ) ;
 int hlist_add_head_rcu (int *,struct hlist_head*) ;
 int init_waitqueue_head (int *) ;
 int kmem_cache_free (int ,struct rds_connection*) ;
 struct rds_connection* kmem_cache_zalloc (int ,int ) ;
 int mutex_init (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rds_cong_add_conn (struct rds_connection*) ;
 int rds_cong_get_maps (struct rds_connection*) ;
 struct hlist_head* rds_conn_bucket (void*,void*) ;
 int rds_conn_count ;
 int rds_conn_lock ;
 struct rds_connection* rds_conn_lookup (struct hlist_head*,void*,void*,struct rds_transport*) ;
 int rds_conn_slab ;
 int rds_connect_worker ;
 struct rds_transport rds_loop_transport ;
 int rds_recv_worker ;
 int rds_send_worker ;
 int rds_shutdown_worker ;
 struct rds_transport* rds_trans_get_preferred (void*) ;
 int rds_trans_put (struct rds_transport*) ;
 int rdsdebug (char*,struct rds_connection*,void**,void**,char*,char*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct rds_connection*,int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;

__attribute__((used)) static struct rds_connection *__rds_conn_create(__be32 laddr, __be32 faddr,
           struct rds_transport *trans, gfp_t gfp,
           int is_outgoing)
{
 struct rds_connection *conn, *parent = ((void*)0);
 struct hlist_head *head = rds_conn_bucket(laddr, faddr);
 struct rds_transport *loop_trans;
 unsigned long flags;
 int ret;

 rcu_read_lock();
 conn = rds_conn_lookup(head, laddr, faddr, trans);
 if (conn
  && conn->c_loopback
  && conn->c_trans != &rds_loop_transport
  && !is_outgoing) {




  parent = conn;
  conn = parent->c_passive;
 }
 rcu_read_unlock();
 if (conn)
  goto out;

 conn = kmem_cache_zalloc(rds_conn_slab, gfp);
 if (!conn) {
  conn = ERR_PTR(-ENOMEM);
  goto out;
 }

 INIT_HLIST_NODE(&conn->c_hash_node);
 conn->c_laddr = laddr;
 conn->c_faddr = faddr;
 spin_lock_init(&conn->c_lock);
 conn->c_next_tx_seq = 1;

 init_waitqueue_head(&conn->c_waitq);
 INIT_LIST_HEAD(&conn->c_send_queue);
 INIT_LIST_HEAD(&conn->c_retrans);

 ret = rds_cong_get_maps(conn);
 if (ret) {
  kmem_cache_free(rds_conn_slab, conn);
  conn = ERR_PTR(ret);
  goto out;
 }






 loop_trans = rds_trans_get_preferred(faddr);
 if (loop_trans) {
  rds_trans_put(loop_trans);
  conn->c_loopback = 1;
  if (is_outgoing && trans->t_prefer_loopback) {




   trans = &rds_loop_transport;
  }
 }

 conn->c_trans = trans;

 ret = trans->conn_alloc(conn, gfp);
 if (ret) {
  kmem_cache_free(rds_conn_slab, conn);
  conn = ERR_PTR(ret);
  goto out;
 }

 atomic_set(&conn->c_state, RDS_CONN_DOWN);
 conn->c_reconnect_jiffies = 0;
 INIT_DELAYED_WORK(&conn->c_send_w, rds_send_worker);
 INIT_DELAYED_WORK(&conn->c_recv_w, rds_recv_worker);
 INIT_DELAYED_WORK(&conn->c_conn_w, rds_connect_worker);
 INIT_WORK(&conn->c_down_w, rds_shutdown_worker);
 mutex_init(&conn->c_cm_lock);
 conn->c_flags = 0;

 rdsdebug("allocated conn %p for %pI4 -> %pI4 over %s %s\n",
   conn, &laddr, &faddr,
   trans->t_name ? trans->t_name : "[unknown]",
   is_outgoing ? "(outgoing)" : "");
 spin_lock_irqsave(&rds_conn_lock, flags);
 if (parent) {

  if (parent->c_passive) {
   trans->conn_free(conn->c_transport_data);
   kmem_cache_free(rds_conn_slab, conn);
   conn = parent->c_passive;
  } else {
   parent->c_passive = conn;
   rds_cong_add_conn(conn);
   rds_conn_count++;
  }
 } else {

  struct rds_connection *found;

  found = rds_conn_lookup(head, laddr, faddr, trans);
  if (found) {
   trans->conn_free(conn->c_transport_data);
   kmem_cache_free(rds_conn_slab, conn);
   conn = found;
  } else {
   hlist_add_head_rcu(&conn->c_hash_node, head);
   rds_cong_add_conn(conn);
   rds_conn_count++;
  }
 }
 spin_unlock_irqrestore(&rds_conn_lock, flags);

out:
 return conn;
}
