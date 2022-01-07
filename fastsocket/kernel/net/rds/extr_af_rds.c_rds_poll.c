
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int * sk_sleep; } ;
struct rds_sock {scalar_t__ rs_snd_bytes; scalar_t__ rs_seen_congestion; int rs_recv_lock; int rs_notify_queue; int rs_recv_queue; int rs_lock; scalar_t__ rs_cong_notify; int rs_cong_track; int rs_cong_monitor; } ;
struct file {int dummy; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRBAND ;
 unsigned int POLLWRNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ rds_cong_updated_since (int *) ;
 int rds_poll_waitq ;
 scalar_t__ rds_sk_sndbuf (struct rds_sock*) ;
 struct rds_sock* rds_sk_to_rs (struct sock*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static unsigned int rds_poll(struct file *file, struct socket *sock,
        poll_table *wait)
{
 struct sock *sk = sock->sk;
 struct rds_sock *rs = rds_sk_to_rs(sk);
 unsigned int mask = 0;
 unsigned long flags;

 poll_wait(file, sk->sk_sleep, wait);

 if (rs->rs_seen_congestion)
  poll_wait(file, &rds_poll_waitq, wait);

 read_lock_irqsave(&rs->rs_recv_lock, flags);
 if (!rs->rs_cong_monitor) {



  if (rds_cong_updated_since(&rs->rs_cong_track))
   mask |= (POLLIN | POLLRDNORM | POLLWRBAND);
 } else {
  spin_lock(&rs->rs_lock);
  if (rs->rs_cong_notify)
   mask |= (POLLIN | POLLRDNORM);
  spin_unlock(&rs->rs_lock);
 }
 if (!list_empty(&rs->rs_recv_queue)
  || !list_empty(&rs->rs_notify_queue))
  mask |= (POLLIN | POLLRDNORM);
 if (rs->rs_snd_bytes < rds_sk_sndbuf(rs))
  mask |= (POLLOUT | POLLWRNORM);
 read_unlock_irqrestore(&rs->rs_recv_lock, flags);


 if (mask)
  rs->rs_seen_congestion = 0;

 return mask;
}
