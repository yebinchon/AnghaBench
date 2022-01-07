
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6_txoptions {scalar_t__ opt_nflen; scalar_t__ srcrt; struct ipv6_opt_hdr* dst0opt; struct ipv6_opt_hdr* hopopt; } ;
struct ipv6_opt_hdr {int dummy; } ;


 scalar_t__ ipv6_hdr_cmp (struct ipv6_opt_hdr*,struct ipv6_opt_hdr*) ;

__attribute__((used)) static int ipv6_opt_cmp(struct ipv6_txoptions *o1, struct ipv6_txoptions *o2)
{
 if (o1 == o2)
  return 0;
 if (o1 == ((void*)0) || o2 == ((void*)0))
  return 1;
 if (o1->opt_nflen != o2->opt_nflen)
  return 1;
 if (ipv6_hdr_cmp(o1->hopopt, o2->hopopt))
  return 1;
 if (ipv6_hdr_cmp(o1->dst0opt, o2->dst0opt))
  return 1;
 if (ipv6_hdr_cmp((struct ipv6_opt_hdr *)o1->srcrt, (struct ipv6_opt_hdr *)o2->srcrt))
  return 1;
 return 0;
}
