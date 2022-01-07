
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
struct xfrm_tmpl {int dummy; } ;
struct xfrm_state_afinfo {int (* init_tempsel ) (struct xfrm_state*,struct flowi*,struct xfrm_tmpl*,int *,int *) ;} ;
struct xfrm_state {int dummy; } ;
struct flowi {int dummy; } ;


 int stub1 (struct xfrm_state*,struct flowi*,struct xfrm_tmpl*,int *,int *) ;
 struct xfrm_state_afinfo* xfrm_state_get_afinfo (unsigned short) ;
 int xfrm_state_put_afinfo (struct xfrm_state_afinfo*) ;

__attribute__((used)) static int
xfrm_init_tempsel(struct xfrm_state *x, struct flowi *fl,
    struct xfrm_tmpl *tmpl,
    xfrm_address_t *daddr, xfrm_address_t *saddr,
    unsigned short family)
{
 struct xfrm_state_afinfo *afinfo = xfrm_state_get_afinfo(family);
 if (!afinfo)
  return -1;
 afinfo->init_tempsel(x, fl, tmpl, daddr, saddr);
 xfrm_state_put_afinfo(afinfo);
 return 0;
}
