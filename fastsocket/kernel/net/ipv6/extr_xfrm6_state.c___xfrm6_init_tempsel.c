
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfrm_address_t ;
struct TYPE_5__ {int daddr; } ;
struct xfrm_tmpl {int reqid; int mode; int saddr; TYPE_2__ id; } ;
struct TYPE_6__ {void* family; int reqid; int mode; int saddr; } ;
struct TYPE_4__ {int prefixlen_d; int prefixlen_s; int ifindex; int proto; void* family; void* sport_mask; int sport; void* dport_mask; int dport; int saddr; int daddr; } ;
struct xfrm_state {TYPE_3__ props; TYPE_2__ id; TYPE_1__ sel; } ;
struct in6_addr {int dummy; } ;
struct flowi {int oif; int proto; int fl6_src; int fl6_dst; } ;


 void* AF_INET6 ;
 void* htons (int) ;
 scalar_t__ ipv6_addr_any (struct in6_addr*) ;
 int ipv6_addr_copy (struct in6_addr*,int *) ;
 int memcpy (int *,int *,int) ;
 int xfrm_flowi_dport (struct flowi*) ;
 int xfrm_flowi_sport (struct flowi*) ;

__attribute__((used)) static void
__xfrm6_init_tempsel(struct xfrm_state *x, struct flowi *fl,
       struct xfrm_tmpl *tmpl,
       xfrm_address_t *daddr, xfrm_address_t *saddr)
{


 ipv6_addr_copy((struct in6_addr *)&x->sel.daddr, &fl->fl6_dst);
 ipv6_addr_copy((struct in6_addr *)&x->sel.saddr, &fl->fl6_src);
 x->sel.dport = xfrm_flowi_dport(fl);
 x->sel.dport_mask = htons(0xffff);
 x->sel.sport = xfrm_flowi_sport(fl);
 x->sel.sport_mask = htons(0xffff);
 x->sel.family = AF_INET6;
 x->sel.prefixlen_d = 128;
 x->sel.prefixlen_s = 128;
 x->sel.proto = fl->proto;
 x->sel.ifindex = fl->oif;
 x->id = tmpl->id;
 if (ipv6_addr_any((struct in6_addr*)&x->id.daddr))
  memcpy(&x->id.daddr, daddr, sizeof(x->sel.daddr));
 memcpy(&x->props.saddr, &tmpl->saddr, sizeof(x->props.saddr));
 if (ipv6_addr_any((struct in6_addr*)&x->props.saddr))
  memcpy(&x->props.saddr, saddr, sizeof(x->props.saddr));
 x->props.mode = tmpl->mode;
 x->props.reqid = tmpl->reqid;
 x->props.family = AF_INET6;
}
