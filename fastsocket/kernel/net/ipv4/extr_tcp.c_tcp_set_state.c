
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_state; int sk_userlocks; TYPE_1__* sk_prot; } ;
struct TYPE_4__ {int icsk_bind_hash; } ;
struct TYPE_3__ {int (* unhash ) (struct sock*) ;} ;


 int SOCK_BINDPORT_LOCK ;
 int SOCK_DEBUG (struct sock*,char*,struct sock*,int ,int ) ;

 int TCP_CLOSE_WAIT ;
 int TCP_DEC_STATS (int ,int ) ;

 int TCP_INC_STATS (int ,int ) ;
 int TCP_MIB_CURRESTAB ;
 int TCP_MIB_ESTABRESETS ;
 TYPE_2__* inet_csk (struct sock*) ;
 int inet_put_port (struct sock*) ;
 int sock_net (struct sock*) ;
 int * statename ;
 int stub1 (struct sock*) ;

void tcp_set_state(struct sock *sk, int state)
{
 int oldstate = sk->sk_state;

 switch (state) {
 case 128:
  if (oldstate != 128)
   TCP_INC_STATS(sock_net(sk), TCP_MIB_CURRESTAB);
  break;

 case 129:
  if (oldstate == TCP_CLOSE_WAIT || oldstate == 128)
   TCP_INC_STATS(sock_net(sk), TCP_MIB_ESTABRESETS);

  sk->sk_prot->unhash(sk);
  if (inet_csk(sk)->icsk_bind_hash &&
      !(sk->sk_userlocks & SOCK_BINDPORT_LOCK))
   inet_put_port(sk);

 default:
  if (oldstate == 128)
   TCP_DEC_STATS(sock_net(sk), TCP_MIB_CURRESTAB);
 }




 sk->sk_state = state;




}
