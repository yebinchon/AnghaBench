
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; } ;


 int BT_CLOSED ;
 int BT_DBG (char*,struct sock*) ;
 int SOCK_ZAPPED ;
 struct sock* bt_accept_dequeue (struct sock*,int *) ;
 int rfcomm_sock_close (struct sock*) ;
 int rfcomm_sock_kill (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;

__attribute__((used)) static void rfcomm_sock_cleanup_listen(struct sock *parent)
{
 struct sock *sk;

 BT_DBG("parent %p", parent);


 while ((sk = bt_accept_dequeue(parent, ((void*)0)))) {
  rfcomm_sock_close(sk);
  rfcomm_sock_kill(sk);
 }

 parent->sk_state = BT_CLOSED;
 sock_set_flag(parent, SOCK_ZAPPED);
}
