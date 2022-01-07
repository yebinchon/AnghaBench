
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_type; scalar_t__ sk_state; int (* sk_state_change ) (struct sock*) ;} ;
struct l2cap_chan_list {int lock; struct sock* head; } ;
struct l2cap_conn {struct l2cap_chan_list chan_list; } ;
struct TYPE_2__ {struct sock* next_c; } ;


 scalar_t__ BT_CONNECT ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct l2cap_conn*) ;
 scalar_t__ SOCK_SEQPACKET ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int l2cap_do_start (struct sock*) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int l2cap_sock_clear_timer (struct sock*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void l2cap_conn_ready(struct l2cap_conn *conn)
{
 struct l2cap_chan_list *l = &conn->chan_list;
 struct sock *sk;

 BT_DBG("conn %p", conn);

 read_lock(&l->lock);

 for (sk = l->head; sk; sk = l2cap_pi(sk)->next_c) {
  bh_lock_sock(sk);

  if (sk->sk_type != SOCK_SEQPACKET) {
   l2cap_sock_clear_timer(sk);
   sk->sk_state = BT_CONNECTED;
   sk->sk_state_change(sk);
  } else if (sk->sk_state == BT_CONNECT)
   l2cap_do_start(sk);

  bh_unlock_sock(sk);
 }

 read_unlock(&l->lock);
}
