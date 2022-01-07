
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int xpt_flags; } ;
struct svc_sock {TYPE_2__ sk_xprt; int * sk_pages; scalar_t__ sk_tcplen; scalar_t__ sk_reclen; struct sock* sk_sk; } ;
struct svc_serv {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_write_space; int sk_data_ready; int sk_state_change; } ;
struct TYPE_3__ {int nonagle; } ;


 scalar_t__ TCP_ESTABLISHED ;
 scalar_t__ TCP_LISTEN ;
 int TCP_NAGLE_OFF ;
 int XPT_CACHE_AUTH ;
 int XPT_CLOSE ;
 int XPT_CONN ;
 int XPT_DATA ;
 int XPT_LISTENER ;
 int dprintk (char*) ;
 int memset (int *,int ,int) ;
 int set_bit (int ,int *) ;
 int svc_tcp_class ;
 int svc_tcp_data_ready ;
 int svc_tcp_listen_data_ready ;
 int svc_tcp_state_change ;
 int svc_tcp_write_space ;
 int svc_xprt_init (int *,TYPE_2__*,struct svc_serv*) ;
 TYPE_1__* tcp_sk (struct sock*) ;

__attribute__((used)) static void svc_tcp_init(struct svc_sock *svsk, struct svc_serv *serv)
{
 struct sock *sk = svsk->sk_sk;

 svc_xprt_init(&svc_tcp_class, &svsk->sk_xprt, serv);
 set_bit(XPT_CACHE_AUTH, &svsk->sk_xprt.xpt_flags);
 if (sk->sk_state == TCP_LISTEN) {
  dprintk("setting up TCP socket for listening\n");
  set_bit(XPT_LISTENER, &svsk->sk_xprt.xpt_flags);
  sk->sk_data_ready = svc_tcp_listen_data_ready;
  set_bit(XPT_CONN, &svsk->sk_xprt.xpt_flags);
 } else {
  dprintk("setting up TCP socket for reading\n");
  sk->sk_state_change = svc_tcp_state_change;
  sk->sk_data_ready = svc_tcp_data_ready;
  sk->sk_write_space = svc_tcp_write_space;

  svsk->sk_reclen = 0;
  svsk->sk_tcplen = 0;
  memset(&svsk->sk_pages[0], 0, sizeof(svsk->sk_pages));

  tcp_sk(sk)->nonagle |= TCP_NAGLE_OFF;

  set_bit(XPT_DATA, &svsk->sk_xprt.xpt_flags);
  if (sk->sk_state != TCP_ESTABLISHED)
   set_bit(XPT_CLOSE, &svsk->sk_xprt.xpt_flags);
 }
}
