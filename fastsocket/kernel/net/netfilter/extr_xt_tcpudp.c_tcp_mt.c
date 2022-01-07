
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tcp {int invflags; unsigned char flg_mask; unsigned char flg_cmp; scalar_t__ option; int * dpts; int * spts; } ;
struct xt_match_param {int fragoff; int* hotdrop; int thoff; struct xt_tcp* matchinfo; } ;
struct tcphdr {int doff; int dest; int source; } ;
struct sk_buff {int dummy; } ;
typedef int _tcph ;


 int FWINVTCP (int,int ) ;
 int XT_TCP_INV_DSTPT ;
 int XT_TCP_INV_FLAGS ;
 int XT_TCP_INV_OPTION ;
 int XT_TCP_INV_SRCPT ;
 int duprintf (char*) ;
 int ntohs (int ) ;
 int port_match (int ,int ,int ,int) ;
 struct tcphdr* skb_header_pointer (struct sk_buff const*,int ,int,struct tcphdr*) ;
 int tcp_find_option (scalar_t__,struct sk_buff const*,int ,int,int,int*) ;

__attribute__((used)) static bool tcp_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct tcphdr *th;
 struct tcphdr _tcph;
 const struct xt_tcp *tcpinfo = par->matchinfo;

 if (par->fragoff != 0) {






  if (par->fragoff == 1) {
   duprintf("Dropping evil TCP offset=1 frag.\n");
   *par->hotdrop = 1;
  }

  return 0;
 }



 th = skb_header_pointer(skb, par->thoff, sizeof(_tcph), &_tcph);
 if (th == ((void*)0)) {


  duprintf("Dropping evil TCP offset=0 tinygram.\n");
  *par->hotdrop = 1;
  return 0;
 }

 if (!port_match(tcpinfo->spts[0], tcpinfo->spts[1],
   ntohs(th->source),
   !!(tcpinfo->invflags & XT_TCP_INV_SRCPT)))
  return 0;
 if (!port_match(tcpinfo->dpts[0], tcpinfo->dpts[1],
   ntohs(th->dest),
   !!(tcpinfo->invflags & XT_TCP_INV_DSTPT)))
  return 0;
 if (!(((((unsigned char *)th)[13] & tcpinfo->flg_mask) == tcpinfo->flg_cmp) ^ !!(tcpinfo->invflags & (XT_TCP_INV_FLAGS))))


  return 0;
 if (tcpinfo->option) {
  if (th->doff * 4 < sizeof(_tcph)) {
   *par->hotdrop = 1;
   return 0;
  }
  if (!tcp_find_option(tcpinfo->option, skb, par->thoff,
         th->doff*4 - sizeof(_tcph),
         tcpinfo->invflags & XT_TCP_INV_OPTION,
         par->hotdrop))
   return 0;
 }
 return 1;
}
