
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;
struct xt_tcpoptstrip_target_info {int strip_bmap; } ;
struct tcphdr {int check; } ;
struct sk_buff {int len; } ;


 unsigned int NF_DROP ;
 int TCPOPT_NOP ;
 unsigned int XT_CONTINUE ;
 int htons (int) ;
 int inet_proto_csum_replace2 (int *,struct sk_buff*,int ,int ,int ) ;
 int memset (int*,int,unsigned int) ;
 unsigned int optlen (int*,unsigned int) ;
 int skb_make_writable (struct sk_buff*,int ) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 unsigned int tcp_hdrlen (struct sk_buff*) ;
 int tcpoptstrip_test_bit (int ,int) ;

__attribute__((used)) static unsigned int
tcpoptstrip_mangle_packet(struct sk_buff *skb,
     const struct xt_tcpoptstrip_target_info *info,
     unsigned int tcphoff, unsigned int minlen)
{
 unsigned int optl, i, j;
 struct tcphdr *tcph;
 u_int16_t n, o;
 u_int8_t *opt;

 if (!skb_make_writable(skb, skb->len))
  return NF_DROP;

 tcph = (struct tcphdr *)(skb_network_header(skb) + tcphoff);
 opt = (u_int8_t *)tcph;





 for (i = sizeof(struct tcphdr); i < tcp_hdrlen(skb); i += optl) {
  optl = optlen(opt, i);

  if (i + optl > tcp_hdrlen(skb))
   break;

  if (!tcpoptstrip_test_bit(info->strip_bmap, opt[i]))
   continue;

  for (j = 0; j < optl; ++j) {
   o = opt[i+j];
   n = TCPOPT_NOP;
   if ((i + j) % 2 == 0) {
    o <<= 8;
    n <<= 8;
   }
   inet_proto_csum_replace2(&tcph->check, skb, htons(o),
       htons(n), 0);
  }
  memset(opt + i, TCPOPT_NOP, optl);
 }

 return XT_CONTINUE;
}
