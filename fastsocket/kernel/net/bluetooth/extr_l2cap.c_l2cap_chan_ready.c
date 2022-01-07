
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int (* sk_data_ready ) (struct sock*,int ) ;int (* sk_state_change ) (struct sock*) ;int sk_state; } ;
struct TYPE_4__ {struct sock* parent; } ;
struct TYPE_3__ {scalar_t__ conf_state; } ;


 int BT_CONNECTED ;
 int BT_DBG (char*,struct sock*,struct sock*) ;
 TYPE_2__* bt_sk (struct sock*) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int l2cap_sock_clear_timer (struct sock*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*,int ) ;

__attribute__((used)) static void l2cap_chan_ready(struct sock *sk)
{
 struct sock *parent = bt_sk(sk)->parent;

 BT_DBG("sk %p, parent %p", sk, parent);

 l2cap_pi(sk)->conf_state = 0;
 l2cap_sock_clear_timer(sk);

 if (!parent) {



  sk->sk_state = BT_CONNECTED;
  sk->sk_state_change(sk);
 } else {



  parent->sk_data_ready(parent, 0);
 }
}
