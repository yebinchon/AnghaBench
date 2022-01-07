
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct xfrm_selector {int dummy; } ;
struct TYPE_2__ {int m; int v; } ;
struct xfrm_policy {scalar_t__ type; int security; TYPE_1__ mark; int family; struct xfrm_selector selector; } ;
struct flowi {int mark; int secid; } ;


 int ESRCH ;
 int security_xfrm_policy_lookup (int ,int ,int) ;
 int xfrm_selector_match (struct xfrm_selector*,struct flowi*,int ) ;

__attribute__((used)) static int xfrm_policy_match(struct xfrm_policy *pol, struct flowi *fl,
        u8 type, u16 family, int dir)
{
 struct xfrm_selector *sel = &pol->selector;
 int match, ret = -ESRCH;

 if (pol->family != family ||
     (fl->mark & pol->mark.m) != pol->mark.v ||
     pol->type != type)
  return ret;

 match = xfrm_selector_match(sel, fl, family);
 if (match)
  ret = security_xfrm_policy_lookup(pol->security, fl->secid,
        dir);

 return ret;
}
