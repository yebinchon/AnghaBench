
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ odstopts; scalar_t__ dstopts; scalar_t__ osrcrt; scalar_t__ srcrt; scalar_t__ rxflow; scalar_t__ ohopopts; scalar_t__ hopopts; } ;
struct TYPE_4__ {TYPE_1__ bits; scalar_t__ all; } ;
struct ipv6_pinfo {TYPE_2__ rxopt; } ;
struct inet6_skb_parm {scalar_t__ dst0; scalar_t__ dst1; scalar_t__ srcrt; scalar_t__ hop; } ;
typedef int __be32 ;


 struct inet6_skb_parm* IP6CB (struct sk_buff*) ;
 int IPV6_FLOWINFO_MASK ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;

int ipv6_opt_accepted(struct sock *sk, struct sk_buff *skb)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct inet6_skb_parm *opt = IP6CB(skb);

 if (np->rxopt.all) {
  if ((opt->hop && (np->rxopt.bits.hopopts ||
      np->rxopt.bits.ohopopts)) ||
      ((IPV6_FLOWINFO_MASK &
        *(__be32 *)skb_network_header(skb)) &&
       np->rxopt.bits.rxflow) ||
      (opt->srcrt && (np->rxopt.bits.srcrt ||
       np->rxopt.bits.osrcrt)) ||
      ((opt->dst1 || opt->dst0) &&
       (np->rxopt.bits.dstopts || np->rxopt.bits.odstopts)))
   return 1;
 }
 return 0;
}
