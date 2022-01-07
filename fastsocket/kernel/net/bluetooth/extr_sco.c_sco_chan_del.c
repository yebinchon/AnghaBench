
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_err; int (* sk_state_change ) (struct sock*) ;int sk_state; } ;
struct sco_conn {int hcon; int * sk; } ;
struct TYPE_2__ {struct sco_conn* conn; } ;


 int BT_CLOSED ;
 int BT_DBG (char*,struct sock*,struct sco_conn*,int) ;
 int SOCK_ZAPPED ;
 int hci_conn_put (int ) ;
 int sco_conn_lock (struct sco_conn*) ;
 int sco_conn_unlock (struct sco_conn*) ;
 TYPE_1__* sco_pi (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void sco_chan_del(struct sock *sk, int err)
{
 struct sco_conn *conn;

 conn = sco_pi(sk)->conn;

 BT_DBG("sk %p, conn %p, err %d", sk, conn, err);

 if (conn) {
  sco_conn_lock(conn);
  conn->sk = ((void*)0);
  sco_pi(sk)->conn = ((void*)0);
  sco_conn_unlock(conn);
  hci_conn_put(conn->hcon);
 }

 sk->sk_state = BT_CLOSED;
 sk->sk_err = err;
 sk->sk_state_change(sk);

 sock_set_flag(sk, SOCK_ZAPPED);
}
