
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_user_tmpl {int calgos; int ealgos; int aalgos; int optional; int share; int mode; int reqid; int saddr; int family; int id; } ;
struct xfrm_tmpl {int calgos; int ealgos; int aalgos; int optional; int share; int mode; int reqid; int saddr; int encap_family; int id; } ;
struct xfrm_policy {int xfrm_nr; struct xfrm_tmpl* xfrm_vec; } ;
struct sk_buff {int dummy; } ;


 int XFRMA_TMPL ;
 int XFRM_MAX_DEPTH ;
 int memcpy (int *,int *,int) ;
 int memset (struct xfrm_user_tmpl*,int ,int) ;
 int nla_put (struct sk_buff*,int ,int,struct xfrm_user_tmpl*) ;

__attribute__((used)) static int copy_to_user_tmpl(struct xfrm_policy *xp, struct sk_buff *skb)
{
 struct xfrm_user_tmpl vec[XFRM_MAX_DEPTH];
 int i;

 if (xp->xfrm_nr == 0)
  return 0;

 for (i = 0; i < xp->xfrm_nr; i++) {
  struct xfrm_user_tmpl *up = &vec[i];
  struct xfrm_tmpl *kp = &xp->xfrm_vec[i];

  memset(up, 0, sizeof(*up));
  memcpy(&up->id, &kp->id, sizeof(up->id));
  up->family = kp->encap_family;
  memcpy(&up->saddr, &kp->saddr, sizeof(up->saddr));
  up->reqid = kp->reqid;
  up->mode = kp->mode;
  up->share = kp->share;
  up->optional = kp->optional;
  up->aalgos = kp->aalgos;
  up->ealgos = kp->ealgos;
  up->calgos = kp->calgos;
 }

 return nla_put(skb, XFRMA_TMPL,
         sizeof(struct xfrm_user_tmpl) * xp->xfrm_nr, vec);
}
