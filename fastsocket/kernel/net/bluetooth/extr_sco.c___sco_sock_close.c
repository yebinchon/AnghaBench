
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; int sk_socket; } ;





 int BT_DBG (char*,struct sock*,int,int ) ;


 int ECONNRESET ;
 int SOCK_ZAPPED ;
 int sco_chan_del (struct sock*,int ) ;
 int sco_sock_cleanup_listen (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;

__attribute__((used)) static void __sco_sock_close(struct sock *sk)
{
 BT_DBG("sk %p state %d socket %p", sk, sk->sk_state, sk->sk_socket);

 switch (sk->sk_state) {
 case 128:
  sco_sock_cleanup_listen(sk);
  break;

 case 130:
 case 132:
 case 131:
 case 129:
  sco_chan_del(sk, ECONNRESET);
  break;

 default:
  sock_set_flag(sk, SOCK_ZAPPED);
  break;
 }
}
