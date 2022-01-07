
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_selector {int dport; int dport_mask; int sport; int sport_mask; scalar_t__ proto; scalar_t__ ifindex; int prefixlen_s; int saddr; int prefixlen_d; int daddr; } ;
struct flowi {scalar_t__ proto; scalar_t__ oif; int fl4_src; int fl4_dst; } ;


 scalar_t__ addr_match (int *,int *,int ) ;
 int xfrm_flowi_dport (struct flowi*) ;
 int xfrm_flowi_sport (struct flowi*) ;

__attribute__((used)) static inline int
__xfrm4_selector_match(struct xfrm_selector *sel, struct flowi *fl)
{
 return addr_match(&fl->fl4_dst, &sel->daddr, sel->prefixlen_d) &&
  addr_match(&fl->fl4_src, &sel->saddr, sel->prefixlen_s) &&
  !((xfrm_flowi_dport(fl) ^ sel->dport) & sel->dport_mask) &&
  !((xfrm_flowi_sport(fl) ^ sel->sport) & sel->sport_mask) &&
  (fl->proto == sel->proto || !sel->proto) &&
  (fl->oif == sel->ifindex || !sel->ifindex);
}
