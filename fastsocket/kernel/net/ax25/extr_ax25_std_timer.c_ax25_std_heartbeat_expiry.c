
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct sock {int sk_rcvbuf; int sk_rmem_alloc; int sk_state; } ;
struct TYPE_6__ {int state; int condition; struct sock* sk; } ;
typedef TYPE_1__ ax25_cb ;


 int AX25_COND_ACK_PENDING ;
 int AX25_COND_OWN_RX_BUSY ;
 int AX25_POLLOFF ;
 int AX25_RESPONSE ;
 int AX25_RR ;



 int SOCK_DEAD ;
 int SOCK_DESTROY ;
 int TCP_LISTEN ;
 int atomic_read (int *) ;
 int ax25_destroy_socket (TYPE_1__*) ;
 int ax25_send_control (TYPE_1__*,int ,int ,int ) ;
 int ax25_start_heartbeat (TYPE_1__*) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;

void ax25_std_heartbeat_expiry(ax25_cb *ax25)
{
 struct sock *sk = ax25->sk;

 if (sk)
  bh_lock_sock(sk);

 switch (ax25->state) {
 case 130:


  if (!sk || sock_flag(sk, SOCK_DESTROY) ||
      (sk->sk_state == TCP_LISTEN &&
       sock_flag(sk, SOCK_DEAD))) {
   if (sk) {
    sock_hold(sk);
    ax25_destroy_socket(ax25);
    bh_unlock_sock(sk);
    sock_put(sk);
   } else
    ax25_destroy_socket(ax25);
   return;
  }
  break;

 case 129:
 case 128:



  if (sk != ((void*)0)) {
   if (atomic_read(&sk->sk_rmem_alloc) <
       (sk->sk_rcvbuf >> 1) &&
       (ax25->condition & AX25_COND_OWN_RX_BUSY)) {
    ax25->condition &= ~AX25_COND_OWN_RX_BUSY;
    ax25->condition &= ~AX25_COND_ACK_PENDING;
    ax25_send_control(ax25, AX25_RR, AX25_POLLOFF, AX25_RESPONSE);
    break;
   }
  }
 }

 if (sk)
  bh_unlock_sock(sk);

 ax25_start_heartbeat(ax25);
}
