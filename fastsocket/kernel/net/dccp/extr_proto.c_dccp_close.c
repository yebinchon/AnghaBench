
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sock {int sk_state; TYPE_1__* sk_prot; int sk_lingertime; int sk_receive_queue; int sk_shutdown; } ;
struct sk_buff {scalar_t__ len; } ;
struct dccp_sock {int dccps_xmit_timer; } ;
struct TYPE_2__ {int orphan_count; int (* disconnect ) (struct sock*,int ) ;} ;


 int DCCP_CLOSED ;
 int DCCP_LISTEN ;
 int DCCP_RESET_CODE_ABORTED ;
 int DCCP_WARN (char*,scalar_t__) ;
 int SHUTDOWN_MASK ;
 int SOCK_LINGER ;
 int WARN_ON (int ) ;
 int __kfree_skb (struct sk_buff*) ;
 struct sk_buff* __skb_dequeue (int *) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int dccp_send_reset (struct sock*,int ) ;
 int dccp_set_state (struct sock*,int) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_terminate_connection (struct sock*) ;
 int inet_csk_destroy_sock (struct sock*) ;
 int inet_csk_listen_stop (struct sock*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int lock_sock (struct sock*) ;
 int percpu_counter_inc (int ) ;
 int release_sock (struct sock*) ;
 int sk_stop_timer (struct sock*,int *) ;
 int sk_stream_wait_close (struct sock*,long) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_hold (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*,int ) ;

void dccp_close(struct sock *sk, long timeout)
{
 struct dccp_sock *dp = dccp_sk(sk);
 struct sk_buff *skb;
 u32 data_was_unread = 0;
 int state;

 lock_sock(sk);

 sk->sk_shutdown = SHUTDOWN_MASK;

 if (sk->sk_state == DCCP_LISTEN) {
  dccp_set_state(sk, DCCP_CLOSED);


  inet_csk_listen_stop(sk);

  goto adjudge_to_death;
 }

 sk_stop_timer(sk, &dp->dccps_xmit_timer);






 while ((skb = __skb_dequeue(&sk->sk_receive_queue)) != ((void*)0)) {
  data_was_unread += skb->len;
  __kfree_skb(skb);
 }

 if (data_was_unread) {

  DCCP_WARN("DCCP: ABORT -- %u bytes unread\n", data_was_unread);
  dccp_send_reset(sk, DCCP_RESET_CODE_ABORTED);
  dccp_set_state(sk, DCCP_CLOSED);
 } else if (sock_flag(sk, SOCK_LINGER) && !sk->sk_lingertime) {

  sk->sk_prot->disconnect(sk, 0);
 } else if (sk->sk_state != DCCP_CLOSED) {
  dccp_terminate_connection(sk);
 }

 sk_stream_wait_close(sk, timeout);

adjudge_to_death:
 state = sk->sk_state;
 sock_hold(sk);
 sock_orphan(sk);




 release_sock(sk);




 local_bh_disable();
 bh_lock_sock(sk);
 WARN_ON(sock_owned_by_user(sk));

 percpu_counter_inc(sk->sk_prot->orphan_count);


 if (state != DCCP_CLOSED && sk->sk_state == DCCP_CLOSED)
  goto out;

 if (sk->sk_state == DCCP_CLOSED)
  inet_csk_destroy_sock(sk);



out:
 bh_unlock_sock(sk);
 local_bh_enable();
 sock_put(sk);
}
