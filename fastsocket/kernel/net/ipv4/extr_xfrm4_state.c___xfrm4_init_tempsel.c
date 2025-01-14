
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ a4; } ;
typedef TYPE_8__ xfrm_address_t ;
struct TYPE_16__ {scalar_t__ a4; } ;
struct TYPE_14__ {scalar_t__ a4; } ;
struct TYPE_15__ {TYPE_4__ daddr; } ;
struct xfrm_tmpl {int reqid; int mode; TYPE_6__ saddr; TYPE_5__ id; } ;
struct TYPE_17__ {void* family; int reqid; int mode; TYPE_6__ saddr; } ;
struct TYPE_12__ {int a4; } ;
struct TYPE_11__ {int a4; } ;
struct TYPE_13__ {int prefixlen_d; int prefixlen_s; int ifindex; int proto; void* family; void* sport_mask; int sport; void* dport_mask; int dport; TYPE_2__ saddr; TYPE_1__ daddr; } ;
struct xfrm_state {TYPE_7__ props; TYPE_5__ id; TYPE_3__ sel; } ;
struct flowi {int oif; int proto; int fl4_src; int fl4_dst; } ;


 void* AF_INET ;
 void* htons (int) ;
 int xfrm_flowi_dport (struct flowi*) ;
 int xfrm_flowi_sport (struct flowi*) ;

__attribute__((used)) static void
__xfrm4_init_tempsel(struct xfrm_state *x, struct flowi *fl,
       struct xfrm_tmpl *tmpl,
       xfrm_address_t *daddr, xfrm_address_t *saddr)
{
 x->sel.daddr.a4 = fl->fl4_dst;
 x->sel.saddr.a4 = fl->fl4_src;
 x->sel.dport = xfrm_flowi_dport(fl);
 x->sel.dport_mask = htons(0xffff);
 x->sel.sport = xfrm_flowi_sport(fl);
 x->sel.sport_mask = htons(0xffff);
 x->sel.family = AF_INET;
 x->sel.prefixlen_d = 32;
 x->sel.prefixlen_s = 32;
 x->sel.proto = fl->proto;
 x->sel.ifindex = fl->oif;
 x->id = tmpl->id;
 if (x->id.daddr.a4 == 0)
  x->id.daddr.a4 = daddr->a4;
 x->props.saddr = tmpl->saddr;
 if (x->props.saddr.a4 == 0)
  x->props.saddr.a4 = saddr->a4;
 x->props.mode = tmpl->mode;
 x->props.reqid = tmpl->reqid;
 x->props.family = AF_INET;
}
