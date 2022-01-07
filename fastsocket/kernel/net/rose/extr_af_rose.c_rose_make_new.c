
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_type; int sk_state; int sk_sndbuf; int sk_rcvbuf; int sk_protocol; int sk_priority; } ;
struct rose_sock {int qbitincl; int device; int defer; int idle; int hb; int t3; int t2; int t1; int idletimer; int timer; scalar_t__ fraglen; int frag_queue; int ack_queue; } ;


 int GFP_ATOMIC ;
 int PF_ROSE ;
 scalar_t__ SOCK_SEQPACKET ;
 int TCP_ESTABLISHED ;
 int init_timer (int *) ;
 int rose_proto ;
 struct rose_sock* rose_sk (struct sock*) ;
 struct sock* sk_alloc (int ,int ,int ,int *) ;
 int skb_queue_head_init (int *) ;
 int sock_copy_flags (struct sock*,struct sock*) ;
 int sock_init_data (int *,struct sock*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static struct sock *rose_make_new(struct sock *osk)
{
 struct sock *sk;
 struct rose_sock *rose, *orose;

 if (osk->sk_type != SOCK_SEQPACKET)
  return ((void*)0);

 sk = sk_alloc(sock_net(osk), PF_ROSE, GFP_ATOMIC, &rose_proto);
 if (sk == ((void*)0))
  return ((void*)0);

 rose = rose_sk(sk);

 sock_init_data(((void*)0), sk);

 skb_queue_head_init(&rose->ack_queue);





 sk->sk_type = osk->sk_type;
 sk->sk_priority = osk->sk_priority;
 sk->sk_protocol = osk->sk_protocol;
 sk->sk_rcvbuf = osk->sk_rcvbuf;
 sk->sk_sndbuf = osk->sk_sndbuf;
 sk->sk_state = TCP_ESTABLISHED;
 sock_copy_flags(sk, osk);

 init_timer(&rose->timer);
 init_timer(&rose->idletimer);

 orose = rose_sk(osk);
 rose->t1 = orose->t1;
 rose->t2 = orose->t2;
 rose->t3 = orose->t3;
 rose->hb = orose->hb;
 rose->idle = orose->idle;
 rose->defer = orose->defer;
 rose->device = orose->device;
 rose->qbitincl = orose->qbitincl;

 return sk;
}
