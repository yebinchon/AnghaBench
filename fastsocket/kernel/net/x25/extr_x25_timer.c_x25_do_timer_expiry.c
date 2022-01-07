
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_sock {int state; int condition; } ;
struct sock {int dummy; } ;


 int ETIMEDOUT ;
 int X25_CLEAR_REQUEST ;
 int X25_COND_ACK_PENDING ;




 int x25_disconnect (struct sock*,int ,int ,int ) ;
 int x25_enquiry_response (struct sock*) ;
 struct x25_sock* x25_sk (struct sock*) ;
 int x25_start_t23timer (struct sock*) ;
 int x25_write_internal (struct sock*,int ) ;

__attribute__((used)) static inline void x25_do_timer_expiry(struct sock * sk)
{
 struct x25_sock *x25 = x25_sk(sk);

 switch (x25->state) {

  case 129:
   if (x25->condition & X25_COND_ACK_PENDING) {
    x25->condition &= ~X25_COND_ACK_PENDING;
    x25_enquiry_response(sk);
   }
   break;

  case 131:
  case 128:
   x25_write_internal(sk, X25_CLEAR_REQUEST);
   x25->state = 130;
   x25_start_t23timer(sk);
   break;

  case 130:
   x25_disconnect(sk, ETIMEDOUT, 0, 0);
   break;
 }
}
