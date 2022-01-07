
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tcphdr {scalar_t__ check; int window; int ack_seq; } ;
struct net_lro_desc {int data_csum; scalar_t__ ip_tot_len; struct iphdr* iph; int tcp_rcv_tsecr; scalar_t__ tcp_saw_tstamp; int tcp_window; int tcp_ack; struct tcphdr* tcph; } ;
struct iphdr {int daddr; int saddr; int ihl; scalar_t__ check; int tot_len; } ;
typedef int __wsum ;
typedef int __be32 ;


 int IPPROTO_TCP ;
 scalar_t__ IP_HDR_LEN (struct iphdr*) ;
 int TCP_HDR_LEN (struct tcphdr*) ;
 int csum_add (int ,int ) ;
 int csum_partial (struct tcphdr*,int ,int ) ;
 scalar_t__ csum_tcpudp_magic (int ,int ,scalar_t__,int ,int ) ;
 int htons (scalar_t__) ;
 scalar_t__ ip_fast_csum (int *,int ) ;

__attribute__((used)) static void lro_update_tcp_ip_header(struct net_lro_desc *lro_desc)
{
 struct iphdr *iph = lro_desc->iph;
 struct tcphdr *tcph = lro_desc->tcph;
 __be32 *p;
 __wsum tcp_hdr_csum;

 tcph->ack_seq = lro_desc->tcp_ack;
 tcph->window = lro_desc->tcp_window;

 if (lro_desc->tcp_saw_tstamp) {
  p = (__be32 *)(tcph + 1);
  *(p+2) = lro_desc->tcp_rcv_tsecr;
 }

 iph->tot_len = htons(lro_desc->ip_tot_len);

 iph->check = 0;
 iph->check = ip_fast_csum((u8 *)lro_desc->iph, iph->ihl);

 tcph->check = 0;
 tcp_hdr_csum = csum_partial(tcph, TCP_HDR_LEN(tcph), 0);
 lro_desc->data_csum = csum_add(lro_desc->data_csum, tcp_hdr_csum);
 tcph->check = csum_tcpudp_magic(iph->saddr, iph->daddr,
     lro_desc->ip_tot_len -
     IP_HDR_LEN(iph), IPPROTO_TCP,
     lro_desc->data_csum);
}
