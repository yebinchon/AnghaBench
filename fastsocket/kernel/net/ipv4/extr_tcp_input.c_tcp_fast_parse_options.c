
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int doff; } ;
struct TYPE_2__ {scalar_t__ tstamp_ok; scalar_t__ saw_tstamp; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;
struct sk_buff {int dummy; } ;


 int TCPOLEN_TSTAMP_ALIGNED ;
 scalar_t__ tcp_parse_aligned_timestamp (struct tcp_sock*,struct tcphdr*) ;
 int tcp_parse_options (struct sk_buff*,TYPE_1__*,int) ;

__attribute__((used)) static int tcp_fast_parse_options(struct sk_buff *skb, struct tcphdr *th,
      struct tcp_sock *tp)
{
 if (th->doff == sizeof(struct tcphdr) >> 2) {
  tp->rx_opt.saw_tstamp = 0;
  return 0;
 } else if (tp->rx_opt.tstamp_ok &&
     th->doff == (sizeof(struct tcphdr)>>2)+(TCPOLEN_TSTAMP_ALIGNED>>2)) {
  if (tcp_parse_aligned_timestamp(tp, th))
   return 1;
 }
 tcp_parse_options(skb, &tp->rx_opt, 1);
 return 1;
}
