
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_err; } ;
struct l2cap_chan_list {int lock; struct sock* head; } ;
struct l2cap_conn {struct l2cap_chan_list chan_list; } ;
struct TYPE_2__ {scalar_t__ force_reliable; struct sock* next_c; } ;


 int BT_DBG (char*,struct l2cap_conn*) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static void l2cap_conn_unreliable(struct l2cap_conn *conn, int err)
{
 struct l2cap_chan_list *l = &conn->chan_list;
 struct sock *sk;

 BT_DBG("conn %p", conn);

 read_lock(&l->lock);

 for (sk = l->head; sk; sk = l2cap_pi(sk)->next_c) {
  if (l2cap_pi(sk)->force_reliable)
   sk->sk_err = err;
 }

 read_unlock(&l->lock);
}
