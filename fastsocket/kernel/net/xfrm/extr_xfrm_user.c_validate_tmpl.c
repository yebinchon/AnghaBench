
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xfrm_user_tmpl {int family; } ;




 int EINVAL ;
 int XFRM_MAX_DEPTH ;

__attribute__((used)) static int validate_tmpl(int nr, struct xfrm_user_tmpl *ut, u16 family)
{
 int i;

 if (nr > XFRM_MAX_DEPTH)
  return -EINVAL;

 for (i = 0; i < nr; i++) {







  if (!ut[i].family)
   ut[i].family = family;

  switch (ut[i].family) {
  case 129:
   break;




  default:
   return -EINVAL;
  }
 }

 return 0;
}
