
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_tmpl {int mode; } ;
__attribute__((used)) static int __xfrm6_tmpl_sort_cmp(void *p)
{
 struct xfrm_tmpl *v = p;
 switch (v->mode) {
 case 129:
  return 1;





 case 128:
 case 132:
  return 3;
 }
 return 4;
}
