
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_state; TYPE_1__* sk_prot; scalar_t__ sk_ack_backlog; scalar_t__ sk_max_ack_backlog; } ;
struct inet_sock {int num; int sport; } ;
struct inet_connection_sock {int icsk_accept_queue; } ;
struct TYPE_2__ {int (* hash ) (struct sock*) ;int (* get_port ) (struct sock*,int ) ;} ;


 int EADDRINUSE ;
 int TCP_CLOSE ;
 int TCP_LISTEN ;
 int __reqsk_queue_destroy (int *) ;
 int htons (int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_delack_init (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int reqsk_queue_alloc (int *,int const) ;
 int sk_dst_reset (struct sock*) ;
 int stub1 (struct sock*,int ) ;
 int stub2 (struct sock*) ;

int inet_csk_listen_start(struct sock *sk, const int nr_table_entries)
{
 struct inet_sock *inet = inet_sk(sk);
 struct inet_connection_sock *icsk = inet_csk(sk);
 int rc = reqsk_queue_alloc(&icsk->icsk_accept_queue, nr_table_entries);

 if (rc != 0)
  return rc;

 sk->sk_max_ack_backlog = 0;
 sk->sk_ack_backlog = 0;
 inet_csk_delack_init(sk);






 sk->sk_state = TCP_LISTEN;
 if (!sk->sk_prot->get_port(sk, inet->num)) {
  inet->sport = htons(inet->num);

  sk_dst_reset(sk);
  sk->sk_prot->hash(sk);

  return 0;
 }

 sk->sk_state = TCP_CLOSE;
 __reqsk_queue_destroy(&icsk->icsk_accept_queue);
 return -EADDRINUSE;
}
