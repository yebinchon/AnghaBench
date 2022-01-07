
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cudlength; int cuddata; } ;
struct x25_sock {int condition; TYPE_1__ calluserdata; int vc_facil_mask; int dte_facilities; int facilities; int state; int vl; int vr; int va; int vs; } ;
struct x25_address {int dummy; } ;
struct sock {int (* sk_state_change ) (struct sock*) ;int sk_state; } ;
struct sk_buff {int * data; int len; } ;


 int ECONNREFUSED ;
 int SOCK_DEAD ;
 int TCP_ESTABLISHED ;

 int X25_CLEAR_CONFIRMATION ;

 int X25_STATE_3 ;
 int X25_STD_MIN_LEN ;
 int skb_copy_from_linear_data (struct sk_buff*,int ,int ) ;
 int skb_pull (struct sk_buff*,int ) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 int x25_addr_ntoa (int *,struct x25_address*,struct x25_address*) ;
 int x25_disconnect (struct sock*,int ,int ,int ) ;
 int x25_parse_facilities (struct sk_buff*,int *,int *,int *) ;
 struct x25_sock* x25_sk (struct sock*) ;
 int x25_stop_timer (struct sock*) ;
 int x25_write_internal (struct sock*,int ) ;

__attribute__((used)) static int x25_state1_machine(struct sock *sk, struct sk_buff *skb, int frametype)
{
 struct x25_address source_addr, dest_addr;

 switch (frametype) {
  case 129: {
   struct x25_sock *x25 = x25_sk(sk);

   x25_stop_timer(sk);
   x25->condition = 0x00;
   x25->vs = 0;
   x25->va = 0;
   x25->vr = 0;
   x25->vl = 0;
   x25->state = X25_STATE_3;
   sk->sk_state = TCP_ESTABLISHED;



   skb_pull(skb, X25_STD_MIN_LEN);
   skb_pull(skb, x25_addr_ntoa(skb->data, &source_addr, &dest_addr));
   skb_pull(skb,
     x25_parse_facilities(skb, &x25->facilities,
      &x25->dte_facilities,
      &x25->vc_facil_mask));



   if (skb->len >= 0) {
    skb_copy_from_linear_data(skb,
           x25->calluserdata.cuddata,
           skb->len);
    x25->calluserdata.cudlength = skb->len;
   }
   if (!sock_flag(sk, SOCK_DEAD))
    sk->sk_state_change(sk);
   break;
  }
  case 128:
   x25_write_internal(sk, X25_CLEAR_CONFIRMATION);
   x25_disconnect(sk, ECONNREFUSED, skb->data[3], skb->data[4]);
   break;

  default:
   break;
 }

 return 0;
}
