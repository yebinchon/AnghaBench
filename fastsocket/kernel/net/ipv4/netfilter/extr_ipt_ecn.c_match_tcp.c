
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int ece; int cwr; } ;
struct sk_buff {int dummy; } ;
struct ipt_ecn_info {int operation; int invert; } ;
typedef int _tcph ;


 int IPT_ECN_OP_MATCH_CWR ;
 int IPT_ECN_OP_MATCH_ECE ;
 int ip_hdrlen (struct sk_buff const*) ;
 struct tcphdr* skb_header_pointer (struct sk_buff const*,int ,int,struct tcphdr*) ;

__attribute__((used)) static inline bool match_tcp(const struct sk_buff *skb,
        const struct ipt_ecn_info *einfo,
        bool *hotdrop)
{
 struct tcphdr _tcph;
 const struct tcphdr *th;




 th = skb_header_pointer(skb, ip_hdrlen(skb), sizeof(_tcph), &_tcph);
 if (th == ((void*)0)) {
  *hotdrop = 0;
  return 0;
 }

 if (einfo->operation & IPT_ECN_OP_MATCH_ECE) {
  if (einfo->invert & IPT_ECN_OP_MATCH_ECE) {
   if (th->ece == 1)
    return 0;
  } else {
   if (th->ece == 0)
    return 0;
  }
 }

 if (einfo->operation & IPT_ECN_OP_MATCH_CWR) {
  if (einfo->invert & IPT_ECN_OP_MATCH_CWR) {
   if (th->cwr == 1)
    return 0;
  } else {
   if (th->cwr == 0)
    return 0;
  }
 }

 return 1;
}
