
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_ack_backlog; TYPE_1__* sk_prot; } ;
struct request_sock {struct request_sock* dl_next; struct sock* sk; } ;
struct inet_connection_sock {int icsk_accept_queue; } ;
struct TYPE_2__ {int orphan_count; int (* disconnect ) (struct sock*,int ) ;} ;


 int O_NONBLOCK ;
 int WARN_ON (int ) ;
 int __reqsk_free (struct request_sock*) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_delete_keepalive_timer (struct sock*) ;
 int inet_csk_destroy_sock (struct sock*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int percpu_counter_inc (int ) ;
 int reqsk_queue_destroy (int *) ;
 struct request_sock* reqsk_queue_yank_acceptq (int *) ;
 int sk_acceptq_removed (struct sock*) ;
 int sock_hold (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*,int ) ;

void inet_csk_listen_stop(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct request_sock *acc_req;
 struct request_sock *req;

 inet_csk_delete_keepalive_timer(sk);


 acc_req = reqsk_queue_yank_acceptq(&icsk->icsk_accept_queue);
 reqsk_queue_destroy(&icsk->icsk_accept_queue);

 while ((req = acc_req) != ((void*)0)) {
  struct sock *child = req->sk;

  acc_req = req->dl_next;

  local_bh_disable();
  bh_lock_sock(child);
  WARN_ON(sock_owned_by_user(child));
  sock_hold(child);

  sk->sk_prot->disconnect(child, O_NONBLOCK);

  sock_orphan(child);

  percpu_counter_inc(sk->sk_prot->orphan_count);

  inet_csk_destroy_sock(child);

  bh_unlock_sock(child);
  local_bh_enable();
  sock_put(child);

  sk_acceptq_removed(sk);
  __reqsk_free(req);
 }
 WARN_ON(sk->sk_ack_backlog);
}
