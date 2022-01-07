
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;
struct bictcp {int loss_cwnd; } ;


 struct bictcp* inet_csk_ca (struct sock*) ;
 int max (int ,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u32 bictcp_undo_cwnd(struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 const struct bictcp *ca = inet_csk_ca(sk);
 return max(tp->snd_cwnd, ca->loss_cwnd);
}
