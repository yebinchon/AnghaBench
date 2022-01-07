
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int seq; } ;
struct sk_buff {int dummy; } ;
struct ip_vs_conn {int flags; int out_seq; int in_seq; } ;
struct ip_vs_app {int (* pkt_out ) (struct ip_vs_app*,struct ip_vs_conn*,struct sk_buff*,int*) ;} ;
typedef int __u32 ;


 int IP_VS_CONN_F_IN_SEQ ;
 int IP_VS_CONN_F_OUT_SEQ ;
 unsigned int ip_hdrlen (struct sk_buff*) ;
 int ntohl (int ) ;
 int skb_make_writable (struct sk_buff*,unsigned int const) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int stub1 (struct ip_vs_app*,struct ip_vs_conn*,struct sk_buff*,int*) ;
 int vs_fix_ack_seq (int *,struct tcphdr*) ;
 int vs_fix_seq (int *,struct tcphdr*) ;
 int vs_seq_update (struct ip_vs_conn*,int *,int,int ,int) ;

__attribute__((used)) static inline int app_tcp_pkt_out(struct ip_vs_conn *cp, struct sk_buff *skb,
      struct ip_vs_app *app)
{
 int diff;
 const unsigned int tcp_offset = ip_hdrlen(skb);
 struct tcphdr *th;
 __u32 seq;

 if (!skb_make_writable(skb, tcp_offset + sizeof(*th)))
  return 0;

 th = (struct tcphdr *)(skb_network_header(skb) + tcp_offset);




 seq = ntohl(th->seq);




 if (cp->flags & IP_VS_CONN_F_OUT_SEQ)
  vs_fix_seq(&cp->out_seq, th);
 if (cp->flags & IP_VS_CONN_F_IN_SEQ)
  vs_fix_ack_seq(&cp->in_seq, th);




 if (app->pkt_out == ((void*)0))
  return 1;

 if (!app->pkt_out(app, cp, skb, &diff))
  return 0;




 if (diff != 0)
  vs_seq_update(cp, &cp->out_seq,
         IP_VS_CONN_F_OUT_SEQ, seq, diff);

 return 1;
}
