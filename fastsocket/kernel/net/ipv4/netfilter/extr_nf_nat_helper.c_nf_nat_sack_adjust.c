
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int doff; } ;
struct sk_buff {unsigned char* data; } ;
struct nf_conn_nat {int * seq; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 unsigned int CTINFO2DIR (int) ;
 unsigned char TCPOLEN_SACK_PERBLOCK ;


 unsigned char TCPOPT_SACK ;
 int ip_hdrlen (struct sk_buff*) ;
 struct nf_conn_nat* nfct_nat (struct nf_conn*) ;
 int sack_adjust (struct sk_buff*,struct tcphdr*,unsigned int,unsigned int,int *) ;
 int skb_make_writable (struct sk_buff*,unsigned int) ;

__attribute__((used)) static inline unsigned int
nf_nat_sack_adjust(struct sk_buff *skb,
     struct tcphdr *tcph,
     struct nf_conn *ct,
     enum ip_conntrack_info ctinfo)
{
 unsigned int dir, optoff, optend;
 struct nf_conn_nat *nat = nfct_nat(ct);

 optoff = ip_hdrlen(skb) + sizeof(struct tcphdr);
 optend = ip_hdrlen(skb) + tcph->doff * 4;

 if (!skb_make_writable(skb, optend))
  return 0;

 dir = CTINFO2DIR(ctinfo);

 while (optoff < optend) {

  unsigned char *op = skb->data + optoff;

  switch (op[0]) {
  case 129:
   return 1;
  case 128:
   optoff++;
   continue;
  default:

   if (optoff + 1 == optend ||
       optoff + op[1] > optend ||
       op[1] < 2)
    return 0;
   if (op[0] == TCPOPT_SACK &&
       op[1] >= 2+TCPOLEN_SACK_PERBLOCK &&
       ((op[1] - 2) % TCPOLEN_SACK_PERBLOCK) == 0)
    sack_adjust(skb, tcph, optoff+2,
         optoff+op[1], &nat->seq[!dir]);
   optoff += op[1];
  }
 }
 return 1;
}
