
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vegas {int minRTT; int baseRTT; int cntRTT; int doing_vegas_now; } ;
struct tcpvegas_info {int tcpv_minrtt; int tcpv_rtt; int tcpv_rttcnt; int tcpv_enabled; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int info ;


 int INET_DIAG_VEGASINFO ;
 struct vegas* inet_csk_ca (struct sock*) ;
 int nla_put (struct sk_buff*,int,int,struct tcpvegas_info*) ;

void tcp_vegas_get_info(struct sock *sk, u32 ext, struct sk_buff *skb)
{
 const struct vegas *ca = inet_csk_ca(sk);
 if (ext & (1 << (INET_DIAG_VEGASINFO - 1))) {
  struct tcpvegas_info info = {
   .tcpv_enabled = ca->doing_vegas_now,
   .tcpv_rttcnt = ca->cntRTT,
   .tcpv_rtt = ca->baseRTT,
   .tcpv_minrtt = ca->minRTT,
  };

  nla_put(skb, INET_DIAG_VEGASINFO, sizeof(info), &info);
 }
}
