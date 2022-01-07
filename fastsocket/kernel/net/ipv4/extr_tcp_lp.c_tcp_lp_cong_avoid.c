
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct lp {int flag; } ;


 int LP_WITHIN_INF ;
 struct lp* inet_csk_ca (struct sock*) ;
 int tcp_reno_cong_avoid (struct sock*,int ,int ) ;

__attribute__((used)) static void tcp_lp_cong_avoid(struct sock *sk, u32 ack, u32 in_flight)
{
 struct lp *lp = inet_csk_ca(sk);

 if (!(lp->flag & LP_WITHIN_INF))
  tcp_reno_cong_avoid(sk, ack, in_flight);
}
