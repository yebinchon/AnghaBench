
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_sock {int condition; int vr; int vl; } ;
struct sock {int sk_rcvbuf; int sk_rmem_alloc; } ;


 int X25_COND_ACK_PENDING ;
 int X25_COND_OWN_RX_BUSY ;
 int X25_RR ;
 int atomic_read (int *) ;
 struct x25_sock* x25_sk (struct sock*) ;
 int x25_stop_timer (struct sock*) ;
 int x25_write_internal (struct sock*,int ) ;

void x25_check_rbuf(struct sock *sk)
{
 struct x25_sock *x25 = x25_sk(sk);

 if (atomic_read(&sk->sk_rmem_alloc) < (sk->sk_rcvbuf >> 1) &&
     (x25->condition & X25_COND_OWN_RX_BUSY)) {
  x25->condition &= ~X25_COND_OWN_RX_BUSY;
  x25->condition &= ~X25_COND_ACK_PENDING;
  x25->vl = x25->vr;
  x25_write_internal(sk, X25_RR);
  x25_stop_timer(sk);
 }
}
