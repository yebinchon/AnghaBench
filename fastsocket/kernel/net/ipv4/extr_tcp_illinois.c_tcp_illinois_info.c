
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tcpvegas_info {int tcpv_enabled; scalar_t__ tcpv_rttcnt; int tcpv_rtt; int tcpv_minrtt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct illinois {scalar_t__ cnt_rtt; int sum_rtt; int base_rtt; } ;
typedef int info ;


 int INET_DIAG_VEGASINFO ;
 int do_div (int ,scalar_t__) ;
 struct illinois* inet_csk_ca (struct sock*) ;
 int nla_put (struct sk_buff*,int,int,struct tcpvegas_info*) ;

__attribute__((used)) static void tcp_illinois_info(struct sock *sk, u32 ext,
         struct sk_buff *skb)
{
 const struct illinois *ca = inet_csk_ca(sk);

 if (ext & (1 << (INET_DIAG_VEGASINFO - 1))) {
  struct tcpvegas_info info = {
   .tcpv_enabled = 1,
   .tcpv_rttcnt = ca->cnt_rtt,
   .tcpv_minrtt = ca->base_rtt,
  };

  if (info.tcpv_rttcnt > 0) {
   u64 t = ca->sum_rtt;

   do_div(t, info.tcpv_rttcnt);
   info.tcpv_rtt = t;
  }
  nla_put(skb, INET_DIAG_VEGASINFO, sizeof(info), &info);
 }
}
