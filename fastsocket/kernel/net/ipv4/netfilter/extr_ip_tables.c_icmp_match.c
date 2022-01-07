
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_match_param {scalar_t__ fragoff; int* hotdrop; int thoff; struct ipt_icmp* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ipt_icmp {int invflags; int * code; int type; } ;
struct icmphdr {int code; int type; } ;
typedef int _icmph ;


 int IPT_ICMP_INV ;
 int duprintf (char*) ;
 int icmp_type_code_match (int ,int ,int ,int ,int ,int) ;
 struct icmphdr* skb_header_pointer (struct sk_buff const*,int ,int,struct icmphdr*) ;

__attribute__((used)) static bool
icmp_match(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct icmphdr *ic;
 struct icmphdr _icmph;
 const struct ipt_icmp *icmpinfo = par->matchinfo;


 if (par->fragoff != 0)
  return 0;

 ic = skb_header_pointer(skb, par->thoff, sizeof(_icmph), &_icmph);
 if (ic == ((void*)0)) {



  duprintf("Dropping evil ICMP tinygram.\n");
  *par->hotdrop = 1;
  return 0;
 }

 return icmp_type_code_match(icmpinfo->type,
        icmpinfo->code[0],
        icmpinfo->code[1],
        ic->type, ic->code,
        !!(icmpinfo->invflags&IPT_ICMP_INV));
}
