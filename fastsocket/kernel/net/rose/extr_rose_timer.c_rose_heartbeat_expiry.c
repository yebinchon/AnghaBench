
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_rcvbuf; int sk_rmem_alloc; int sk_state; } ;
struct rose_sock {int state; int condition; int vr; int vl; } ;


 int ROSE_COND_ACK_PENDING ;
 int ROSE_COND_OWN_RX_BUSY ;
 int ROSE_RR ;


 int SOCK_DEAD ;
 int SOCK_DESTROY ;
 int TCP_LISTEN ;
 int atomic_read (int *) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int rose_destroy_socket (struct sock*) ;
 struct rose_sock* rose_sk (struct sock*) ;
 int rose_start_heartbeat (struct sock*) ;
 int rose_stop_timer (struct sock*) ;
 int rose_write_internal (struct sock*,int ) ;
 int sock_flag (struct sock*,int ) ;

__attribute__((used)) static void rose_heartbeat_expiry(unsigned long param)
{
 struct sock *sk = (struct sock *)param;
 struct rose_sock *rose = rose_sk(sk);

 bh_lock_sock(sk);
 switch (rose->state) {
 case 129:


  if (sock_flag(sk, SOCK_DESTROY) ||
      (sk->sk_state == TCP_LISTEN && sock_flag(sk, SOCK_DEAD))) {
   bh_unlock_sock(sk);
   rose_destroy_socket(sk);
   return;
  }
  break;

 case 128:



  if (atomic_read(&sk->sk_rmem_alloc) < (sk->sk_rcvbuf / 2) &&
      (rose->condition & ROSE_COND_OWN_RX_BUSY)) {
   rose->condition &= ~ROSE_COND_OWN_RX_BUSY;
   rose->condition &= ~ROSE_COND_ACK_PENDING;
   rose->vl = rose->vr;
   rose_write_internal(sk, ROSE_RR);
   rose_stop_timer(sk);
   break;
  }
  break;
 }

 rose_start_heartbeat(sk);
 bh_unlock_sock(sk);
}
