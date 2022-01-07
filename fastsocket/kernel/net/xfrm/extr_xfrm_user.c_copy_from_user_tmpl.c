
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_user_tmpl {int dummy; } ;
struct xfrm_policy {int family; scalar_t__ xfrm_nr; } ;
struct nlattr {int dummy; } ;


 size_t XFRMA_TMPL ;
 int copy_templates (struct xfrm_policy*,struct xfrm_user_tmpl*,int) ;
 struct xfrm_user_tmpl* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int validate_tmpl (int,struct xfrm_user_tmpl*,int ) ;

__attribute__((used)) static int copy_from_user_tmpl(struct xfrm_policy *pol, struct nlattr **attrs)
{
 struct nlattr *rt = attrs[XFRMA_TMPL];

 if (!rt) {
  pol->xfrm_nr = 0;
 } else {
  struct xfrm_user_tmpl *utmpl = nla_data(rt);
  int nr = nla_len(rt) / sizeof(*utmpl);
  int err;

  err = validate_tmpl(nr, utmpl, pol->family);
  if (err)
   return err;

  copy_templates(pol, utmpl, nr);
 }
 return 0;
}
