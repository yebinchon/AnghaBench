
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_write_space; int sk_state; } ;
struct request_sock {int dummy; } ;
struct inet_connection_sock {int icsk_accept_queue; scalar_t__ icsk_probes_out; scalar_t__ icsk_backoff; scalar_t__ icsk_retransmits; int * icsk_bind_hash; } ;
typedef int gfp_t ;
struct TYPE_4__ {int loc_port; int rmt_port; } ;
struct TYPE_3__ {int sport; int num; int dport; } ;


 int TCP_SYN_RECV ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 TYPE_2__* inet_rsk (struct request_sock const*) ;
 TYPE_1__* inet_sk (struct sock*) ;
 int memset (int *,int ,int) ;
 int ntohs (int ) ;
 int security_inet_csk_clone (struct sock*,struct request_sock const*) ;
 struct sock* sk_clone (struct sock*,int const) ;
 int sk_stream_write_space ;

struct sock *inet_csk_clone(struct sock *sk, const struct request_sock *req,
       const gfp_t priority)
{
 struct sock *newsk = sk_clone(sk, priority);

 if (newsk != ((void*)0)) {
  struct inet_connection_sock *newicsk = inet_csk(newsk);

  newsk->sk_state = TCP_SYN_RECV;
  newicsk->icsk_bind_hash = ((void*)0);

  inet_sk(newsk)->dport = inet_rsk(req)->rmt_port;
  inet_sk(newsk)->num = ntohs(inet_rsk(req)->loc_port);
  inet_sk(newsk)->sport = inet_rsk(req)->loc_port;
  newsk->sk_write_space = sk_stream_write_space;

  newicsk->icsk_retransmits = 0;
  newicsk->icsk_backoff = 0;
  newicsk->icsk_probes_out = 0;


  memset(&newicsk->icsk_accept_queue, 0, sizeof(newicsk->icsk_accept_queue));

  security_inet_csk_clone(newsk, req);
 }
 return newsk;
}
