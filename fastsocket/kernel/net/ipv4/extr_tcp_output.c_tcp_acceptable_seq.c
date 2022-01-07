
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int snd_nxt; } ;
struct sock {int dummy; } ;
typedef int __u32 ;


 int before (int ,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_wnd_end (struct tcp_sock*) ;

__attribute__((used)) static inline __u32 tcp_acceptable_seq(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (!before(tcp_wnd_end(tp), tp->snd_nxt))
  return tp->snd_nxt;
 else
  return tcp_wnd_end(tp);
}
