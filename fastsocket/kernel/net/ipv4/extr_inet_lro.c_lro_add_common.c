
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int ack_seq; int window; } ;
struct sk_buff {int len; int data_len; } ;
struct net_lro_desc {int ip_tot_len; int tcp_next_seq; int mss; int data_csum; int tcp_rcv_tsecr; scalar_t__ tcp_saw_tstamp; int tcp_ack; int tcp_window; int pkt_aggr_cnt; struct sk_buff* parent; } ;
struct iphdr {int dummy; } ;
typedef int __be32 ;


 int csum_block_add (int ,int ,int) ;
 int lro_tcp_data_csum (struct iphdr*,struct tcphdr*,int) ;

__attribute__((used)) static void lro_add_common(struct net_lro_desc *lro_desc, struct iphdr *iph,
      struct tcphdr *tcph, int tcp_data_len)
{
 struct sk_buff *parent = lro_desc->parent;
 __be32 *topt;

 lro_desc->pkt_aggr_cnt++;
 lro_desc->ip_tot_len += tcp_data_len;
 lro_desc->tcp_next_seq += tcp_data_len;
 lro_desc->tcp_window = tcph->window;
 lro_desc->tcp_ack = tcph->ack_seq;


 if (lro_desc->tcp_saw_tstamp) {
  topt = (__be32 *) (tcph + 1);
  lro_desc->tcp_rcv_tsecr = *(topt + 2);
 }

 lro_desc->data_csum = csum_block_add(lro_desc->data_csum,
          lro_tcp_data_csum(iph, tcph,
              tcp_data_len),
          parent->len);

 parent->len += tcp_data_len;
 parent->data_len += tcp_data_len;
 if (tcp_data_len > lro_desc->mss)
  lro_desc->mss = tcp_data_len;
}
