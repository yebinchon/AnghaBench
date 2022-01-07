
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int (* sk_data_ready ) (struct sock*,int) ;void* sk_state; int (* sk_state_change ) (struct sock*) ;} ;
struct sco_conn {int hcon; int dst; int src; struct sock* sk; } ;
struct TYPE_2__ {int dst; int src; } ;


 int BTPROTO_SCO ;
 void* BT_CONNECTED ;
 int BT_DBG (char*,struct sco_conn*) ;
 int GFP_ATOMIC ;
 int __sco_chan_add (struct sco_conn*,struct sock*,struct sock*) ;
 int bacpy (int *,int ) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 TYPE_1__* bt_sk (struct sock*) ;
 int hci_conn_hold (int ) ;
 int sco_conn_lock (struct sco_conn*) ;
 int sco_conn_unlock (struct sco_conn*) ;
 struct sock* sco_get_sock_listen (int ) ;
 struct sock* sco_sock_alloc (int ,int *,int ,int ) ;
 int sco_sock_clear_timer (struct sock*) ;
 int sco_sock_init (struct sock*,struct sock*) ;
 int sock_net (struct sock*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*,int) ;

__attribute__((used)) static void sco_conn_ready(struct sco_conn *conn)
{
 struct sock *parent, *sk;

 BT_DBG("conn %p", conn);

 sco_conn_lock(conn);

 if ((sk = conn->sk)) {
  sco_sock_clear_timer(sk);
  bh_lock_sock(sk);
  sk->sk_state = BT_CONNECTED;
  sk->sk_state_change(sk);
  bh_unlock_sock(sk);
 } else {
  parent = sco_get_sock_listen(conn->src);
  if (!parent)
   goto done;

  bh_lock_sock(parent);

  sk = sco_sock_alloc(sock_net(parent), ((void*)0), BTPROTO_SCO, GFP_ATOMIC);
  if (!sk) {
   bh_unlock_sock(parent);
   goto done;
  }

  sco_sock_init(sk, parent);

  bacpy(&bt_sk(sk)->src, conn->src);
  bacpy(&bt_sk(sk)->dst, conn->dst);

  hci_conn_hold(conn->hcon);
  __sco_chan_add(conn, sk, parent);

  sk->sk_state = BT_CONNECTED;


  parent->sk_data_ready(parent, 1);

  bh_unlock_sock(parent);
 }

done:
 sco_conn_unlock(conn);
}
