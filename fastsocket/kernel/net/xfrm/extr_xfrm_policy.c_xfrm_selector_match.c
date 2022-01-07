
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_selector {int dummy; } ;
struct flowi {int dummy; } ;




 int __xfrm4_selector_match (struct xfrm_selector*,struct flowi*) ;
 int __xfrm6_selector_match (struct xfrm_selector*,struct flowi*) ;

int xfrm_selector_match(struct xfrm_selector *sel, struct flowi *fl,
      unsigned short family)
{
 switch (family) {
 case 129:
  return __xfrm4_selector_match(sel, fl);
 case 128:
  return __xfrm6_selector_match(sel, fl);
 }
 return 0;
}
