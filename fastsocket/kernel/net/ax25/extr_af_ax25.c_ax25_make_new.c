
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int sk_type; int sk_destruct; TYPE_1__* sk_protinfo; int sk_state; int sk_sndbuf; int sk_rcvbuf; int sk_protocol; int sk_priority; int sk_prot; } ;
struct ax25_dev {int dummy; } ;
typedef int ax25_digi ;
struct TYPE_5__ {struct sock* sk; int * digipeat; int source_addr; struct ax25_dev* ax25_dev; int window; int paclen; int idle; int n2; int t3; int t2; int t1; int rtt; int iamdigi; int pidincl; int backoff; int modulus; } ;
typedef TYPE_1__ ax25_cb ;


 int GFP_ATOMIC ;
 int PF_AX25 ;


 int TCP_ESTABLISHED ;
 int ax25_cb_put (TYPE_1__*) ;
 TYPE_1__* ax25_create_cb () ;
 int ax25_free_sock ;
 TYPE_1__* ax25_sk (struct sock*) ;
 int * kmemdup (int *,int,int ) ;
 struct sock* sk_alloc (int ,int ,int ,int ) ;
 int sk_free (struct sock*) ;
 int sock_copy_flags (struct sock*,struct sock*) ;
 int sock_init_data (int *,struct sock*) ;
 int sock_net (struct sock*) ;

struct sock *ax25_make_new(struct sock *osk, struct ax25_dev *ax25_dev)
{
 struct sock *sk;
 ax25_cb *ax25, *oax25;

 sk = sk_alloc(sock_net(osk), PF_AX25, GFP_ATOMIC, osk->sk_prot);
 if (sk == ((void*)0))
  return ((void*)0);

 if ((ax25 = ax25_create_cb()) == ((void*)0)) {
  sk_free(sk);
  return ((void*)0);
 }

 switch (osk->sk_type) {
 case 129:
  break;
 case 128:
  break;
 default:
  sk_free(sk);
  ax25_cb_put(ax25);
  return ((void*)0);
 }

 sock_init_data(((void*)0), sk);

 sk->sk_type = osk->sk_type;
 sk->sk_priority = osk->sk_priority;
 sk->sk_protocol = osk->sk_protocol;
 sk->sk_rcvbuf = osk->sk_rcvbuf;
 sk->sk_sndbuf = osk->sk_sndbuf;
 sk->sk_state = TCP_ESTABLISHED;
 sock_copy_flags(sk, osk);

 oax25 = ax25_sk(osk);

 ax25->modulus = oax25->modulus;
 ax25->backoff = oax25->backoff;
 ax25->pidincl = oax25->pidincl;
 ax25->iamdigi = oax25->iamdigi;
 ax25->rtt = oax25->rtt;
 ax25->t1 = oax25->t1;
 ax25->t2 = oax25->t2;
 ax25->t3 = oax25->t3;
 ax25->n2 = oax25->n2;
 ax25->idle = oax25->idle;
 ax25->paclen = oax25->paclen;
 ax25->window = oax25->window;

 ax25->ax25_dev = ax25_dev;
 ax25->source_addr = oax25->source_addr;

 if (oax25->digipeat != ((void*)0)) {
  ax25->digipeat = kmemdup(oax25->digipeat, sizeof(ax25_digi),
      GFP_ATOMIC);
  if (ax25->digipeat == ((void*)0)) {
   sk_free(sk);
   ax25_cb_put(ax25);
   return ((void*)0);
  }
 }

 sk->sk_protinfo = ax25;
 sk->sk_destruct = ax25_free_sock;
 ax25->sk = sk;

 return sk;
}
