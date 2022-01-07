
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int (* sk_state_change ) (struct sock*) ;int sk_state; } ;
struct sk_buff {int * data; } ;
struct rose_sock {int condition; TYPE_1__* neighbour; int state; int vl; int vr; int va; int vs; } ;
struct TYPE_2__ {int use; } ;


 int ECONNREFUSED ;

 int ROSE_CLEAR_CONFIRMATION ;

 int ROSE_STATE_3 ;
 int SOCK_DEAD ;
 int TCP_ESTABLISHED ;
 int rose_disconnect (struct sock*,int ,int ,int ) ;
 struct rose_sock* rose_sk (struct sock*) ;
 int rose_start_idletimer (struct sock*) ;
 int rose_stop_timer (struct sock*) ;
 int rose_write_internal (struct sock*,int ) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int rose_state1_machine(struct sock *sk, struct sk_buff *skb, int frametype)
{
 struct rose_sock *rose = rose_sk(sk);

 switch (frametype) {
 case 129:
  rose_stop_timer(sk);
  rose_start_idletimer(sk);
  rose->condition = 0x00;
  rose->vs = 0;
  rose->va = 0;
  rose->vr = 0;
  rose->vl = 0;
  rose->state = ROSE_STATE_3;
  sk->sk_state = TCP_ESTABLISHED;
  if (!sock_flag(sk, SOCK_DEAD))
   sk->sk_state_change(sk);
  break;

 case 128:
  rose_write_internal(sk, ROSE_CLEAR_CONFIRMATION);
  rose_disconnect(sk, ECONNREFUSED, skb->data[3], skb->data[4]);
  rose->neighbour->use--;
  break;

 default:
  break;
 }

 return 0;
}
