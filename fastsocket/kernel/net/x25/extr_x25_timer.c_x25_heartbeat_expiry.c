
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_state; } ;
struct TYPE_2__ {int state; } ;


 int SOCK_DEAD ;
 int SOCK_DESTROY ;
 int TCP_LISTEN ;


 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int x25_check_rbuf (struct sock*) ;
 int x25_destroy_socket_from_timer (struct sock*) ;
 TYPE_1__* x25_sk (struct sock*) ;
 int x25_start_heartbeat (struct sock*) ;

__attribute__((used)) static void x25_heartbeat_expiry(unsigned long param)
{
 struct sock *sk = (struct sock *)param;

 bh_lock_sock(sk);
 if (sock_owned_by_user(sk))
  goto restart_heartbeat;

 switch (x25_sk(sk)->state) {

  case 129:





   if (sock_flag(sk, SOCK_DESTROY) ||
       (sk->sk_state == TCP_LISTEN &&
        sock_flag(sk, SOCK_DEAD))) {
    bh_unlock_sock(sk);
    x25_destroy_socket_from_timer(sk);
    return;
   }
   break;

  case 128:



   x25_check_rbuf(sk);
   break;
 }
restart_heartbeat:
 x25_start_heartbeat(sk);
 bh_unlock_sock(sk);
}
