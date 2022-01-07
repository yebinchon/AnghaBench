
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_sock {int condition; int state; int vl; int vs; int vr; int va; } ;
struct sock {int dummy; } ;
struct sk_buff {int * data; } ;


 int X25_CLEAR_CONFIRMATION ;



 int X25_STATE_3 ;
 int x25_disconnect (struct sock*,int ,int ,int ) ;
 int x25_requeue_frames (struct sock*) ;
 struct x25_sock* x25_sk (struct sock*) ;
 int x25_stop_timer (struct sock*) ;
 int x25_write_internal (struct sock*,int) ;

__attribute__((used)) static int x25_state4_machine(struct sock *sk, struct sk_buff *skb, int frametype)
{
 switch (frametype) {

  case 128:
   x25_write_internal(sk, 129);
  case 129: {
   struct x25_sock *x25 = x25_sk(sk);

   x25_stop_timer(sk);
   x25->condition = 0x00;
   x25->va = 0;
   x25->vr = 0;
   x25->vs = 0;
   x25->vl = 0;
   x25->state = X25_STATE_3;
   x25_requeue_frames(sk);
   break;
  }
  case 130:
   x25_write_internal(sk, X25_CLEAR_CONFIRMATION);
   x25_disconnect(sk, 0, skb->data[3], skb->data[4]);
   break;

  default:
   break;
 }

 return 0;
}
