
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int i_hdr; struct rds_connection* i_conn; } ;
struct TYPE_3__ {int op_active; } ;
struct rds_message {TYPE_2__ m_inc; int m_flags; int m_conn_item; TYPE_1__ data; int m_daddr; } ;
struct rds_connection {int c_send_w; int c_flags; int c_lock; int c_next_tx_seq; int c_send_queue; int c_fcong; int c_faddr; } ;
typedef int __be16 ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int RDS_LL_SEND_FULL ;
 int RDS_MSG_ON_CONN ;
 int list_add_tail (int *,int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int rds_cong_wait (int ,int ,int,int *) ;
 int rds_conn_connect_if_down (struct rds_connection*) ;
 int rds_message_addref (struct rds_message*) ;
 struct rds_message* rds_message_alloc (int ,int ) ;
 int rds_message_populate_header (int *,int ,int ,int ) ;
 int rds_message_put (struct rds_message*) ;
 int rds_stats_inc (int ) ;
 int rds_wq ;
 int s_send_pong ;
 int s_send_queued ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

int
rds_send_pong(struct rds_connection *conn, __be16 dport)
{
 struct rds_message *rm;
 unsigned long flags;
 int ret = 0;

 rm = rds_message_alloc(0, GFP_ATOMIC);
 if (!rm) {
  ret = -ENOMEM;
  goto out;
 }

 rm->m_daddr = conn->c_faddr;
 rm->data.op_active = 1;

 rds_conn_connect_if_down(conn);

 ret = rds_cong_wait(conn->c_fcong, dport, 1, ((void*)0));
 if (ret)
  goto out;

 spin_lock_irqsave(&conn->c_lock, flags);
 list_add_tail(&rm->m_conn_item, &conn->c_send_queue);
 set_bit(RDS_MSG_ON_CONN, &rm->m_flags);
 rds_message_addref(rm);
 rm->m_inc.i_conn = conn;

 rds_message_populate_header(&rm->m_inc.i_hdr, 0, dport,
        conn->c_next_tx_seq);
 conn->c_next_tx_seq++;
 spin_unlock_irqrestore(&conn->c_lock, flags);

 rds_stats_inc(s_send_queued);
 rds_stats_inc(s_send_pong);

 if (!test_bit(RDS_LL_SEND_FULL, &conn->c_flags))
  queue_delayed_work(rds_wq, &conn->c_send_w, 0);

 rds_message_put(rm);
 return 0;

out:
 if (rm)
  rds_message_put(rm);
 return ret;
}
