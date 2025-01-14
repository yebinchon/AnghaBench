
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_user_tmpl {int dummy; } ;
struct xfrm_user_acquire {int dummy; } ;
struct xfrm_state {int security; } ;
struct xfrm_policy {int xfrm_nr; } ;
struct xfrm_mark {int dummy; } ;


 size_t NLMSG_ALIGN (int) ;
 size_t nla_total_size (int) ;
 size_t userpolicy_type_attrsize () ;
 int xfrm_user_sec_ctx_size (int ) ;

__attribute__((used)) static inline size_t xfrm_acquire_msgsize(struct xfrm_state *x,
       struct xfrm_policy *xp)
{
 return NLMSG_ALIGN(sizeof(struct xfrm_user_acquire))
        + nla_total_size(sizeof(struct xfrm_user_tmpl) * xp->xfrm_nr)
        + nla_total_size(sizeof(struct xfrm_mark))
        + nla_total_size(xfrm_user_sec_ctx_size(x->security))
        + userpolicy_type_attrsize();
}
