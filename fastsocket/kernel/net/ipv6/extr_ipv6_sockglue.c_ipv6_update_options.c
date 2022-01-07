
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_state; int sk_dst_lock; } ;
struct ipv6_txoptions {scalar_t__ opt_nflen; scalar_t__ opt_flen; } ;
struct inet_connection_sock {int icsk_pmtu_cookie; int (* icsk_sync_mss ) (struct sock*,int ) ;scalar_t__ icsk_ext_hdr_len; } ;
struct TYPE_4__ {int opt; } ;
struct TYPE_3__ {scalar_t__ daddr; scalar_t__ is_icsk; } ;


 scalar_t__ LOOPBACK4_IPV6 ;
 int TCPF_CLOSE ;
 int TCPF_LISTEN ;
 TYPE_2__* inet6_sk (struct sock*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 TYPE_1__* inet_sk (struct sock*) ;
 int sk_dst_reset (struct sock*) ;
 int stub1 (struct sock*,int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;
 struct ipv6_txoptions* xchg (int *,struct ipv6_txoptions*) ;

__attribute__((used)) static
struct ipv6_txoptions *ipv6_update_options(struct sock *sk,
        struct ipv6_txoptions *opt)
{
 if (inet_sk(sk)->is_icsk) {
  if (opt &&
      !((1 << sk->sk_state) & (TCPF_LISTEN | TCPF_CLOSE)) &&
      inet_sk(sk)->daddr != LOOPBACK4_IPV6) {
   struct inet_connection_sock *icsk = inet_csk(sk);
   icsk->icsk_ext_hdr_len = opt->opt_flen + opt->opt_nflen;
   icsk->icsk_sync_mss(sk, icsk->icsk_pmtu_cookie);
  }
  opt = xchg(&inet6_sk(sk)->opt, opt);
 } else {
  write_lock(&sk->sk_dst_lock);
  opt = xchg(&inet6_sk(sk)->opt, opt);
  write_unlock(&sk->sk_dst_lock);
 }
 sk_dst_reset(sk);

 return opt;
}
