
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct westwood {int rtt_min; int rtt; } ;
struct tcpvegas_info {int tcpv_enabled; int tcpv_minrtt; int tcpv_rtt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int info ;


 int INET_DIAG_VEGASINFO ;
 struct westwood* inet_csk_ca (struct sock*) ;
 int jiffies_to_usecs (int ) ;
 int nla_put (struct sk_buff*,int,int,struct tcpvegas_info*) ;

__attribute__((used)) static void tcp_westwood_info(struct sock *sk, u32 ext,
         struct sk_buff *skb)
{
 const struct westwood *ca = inet_csk_ca(sk);
 if (ext & (1 << (INET_DIAG_VEGASINFO - 1))) {
  struct tcpvegas_info info = {
   .tcpv_enabled = 1,
   .tcpv_rtt = jiffies_to_usecs(ca->rtt),
   .tcpv_minrtt = jiffies_to_usecs(ca->rtt_min),
  };

  nla_put(skb, INET_DIAG_VEGASINFO, sizeof(info), &info);
 }
}
