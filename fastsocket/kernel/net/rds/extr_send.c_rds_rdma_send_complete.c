
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rm_rdma_op {struct rds_notifier* op_notifier; scalar_t__ op_notify; scalar_t__ op_active; } ;
struct rds_sock {int rs_lock; int rs_notify_queue; } ;
struct rds_notifier {int n_status; int n_list; } ;
struct rds_message {int m_rs_lock; struct rds_sock* m_rs; int m_flags; struct rm_rdma_op rdma; } ;


 int RDS_MSG_ON_SOCK ;
 int list_add_tail (int *,int *) ;
 int rds_rs_to_sk (struct rds_sock*) ;
 int rds_wake_sk_sleep (struct rds_sock*) ;
 int sock_hold (int ) ;
 int sock_put (int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

void rds_rdma_send_complete(struct rds_message *rm, int status)
{
 struct rds_sock *rs = ((void*)0);
 struct rm_rdma_op *ro;
 struct rds_notifier *notifier;
 unsigned long flags;

 spin_lock_irqsave(&rm->m_rs_lock, flags);

 ro = &rm->rdma;
 if (test_bit(RDS_MSG_ON_SOCK, &rm->m_flags) &&
     ro->op_active && ro->op_notify && ro->op_notifier) {
  notifier = ro->op_notifier;
  rs = rm->m_rs;
  sock_hold(rds_rs_to_sk(rs));

  notifier->n_status = status;
  spin_lock(&rs->rs_lock);
  list_add_tail(&notifier->n_list, &rs->rs_notify_queue);
  spin_unlock(&rs->rs_lock);

  ro->op_notifier = ((void*)0);
 }

 spin_unlock_irqrestore(&rm->m_rs_lock, flags);

 if (rs) {
  rds_wake_sk_sleep(rs);
  sock_put(rds_rs_to_sk(rs));
 }
}
