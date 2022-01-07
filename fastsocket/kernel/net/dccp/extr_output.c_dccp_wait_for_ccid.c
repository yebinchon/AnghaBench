
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_sleep; scalar_t__ sk_err; int sk_write_pending; } ;
struct sk_buff {int dummy; } ;
struct dccp_sock {int dccps_hc_tx_ccid; } ;


 int DEFINE_WAIT (int ) ;
 int EINTR ;
 int EPIPE ;
 int TASK_INTERRUPTIBLE ;
 int ccid_hc_tx_send_packet (int ,struct sock*,struct sk_buff*) ;
 int current ;
 int dccp_pr_debug (char*,int) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 unsigned long msecs_to_jiffies (int) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 int schedule_timeout (unsigned long) ;
 scalar_t__ signal_pending (int ) ;
 int wait ;

__attribute__((used)) static int dccp_wait_for_ccid(struct sock *sk, struct sk_buff *skb, int delay)
{
 struct dccp_sock *dp = dccp_sk(sk);
 DEFINE_WAIT(wait);
 unsigned long jiffdelay;
 int rc;

 do {
  dccp_pr_debug("delayed send by %d msec\n", delay);
  jiffdelay = msecs_to_jiffies(delay);

  prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);

  sk->sk_write_pending++;
  release_sock(sk);
  schedule_timeout(jiffdelay);
  lock_sock(sk);
  sk->sk_write_pending--;

  if (sk->sk_err)
   goto do_error;
  if (signal_pending(current))
   goto do_interrupted;

  rc = ccid_hc_tx_send_packet(dp->dccps_hc_tx_ccid, sk, skb);
 } while ((delay = rc) > 0);
out:
 finish_wait(sk->sk_sleep, &wait);
 return rc;

do_error:
 rc = -EPIPE;
 goto out;
do_interrupted:
 rc = -EINTR;
 goto out;
}
