
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sco_conn {struct sock* sk; } ;
struct TYPE_2__ {struct sco_conn* conn; } ;


 int BT_DBG (char*,struct sco_conn*) ;
 int bt_accept_enqueue (struct sock*,struct sock*) ;
 TYPE_1__* sco_pi (struct sock*) ;

__attribute__((used)) static void __sco_chan_add(struct sco_conn *conn, struct sock *sk, struct sock *parent)
{
 BT_DBG("conn %p", conn);

 sco_pi(sk)->conn = conn;
 conn->sk = sk;

 if (parent)
  bt_accept_enqueue(parent, sk);
}
