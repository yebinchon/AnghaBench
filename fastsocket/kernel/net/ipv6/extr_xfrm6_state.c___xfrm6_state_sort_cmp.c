
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int proto; } ;
struct TYPE_3__ {int mode; } ;
struct xfrm_state {TYPE_2__ id; TYPE_1__ props; } ;


 int IPPROTO_AH ;






__attribute__((used)) static int __xfrm6_state_sort_cmp(void *p)
{
 struct xfrm_state *v = p;

 switch (v->props.mode) {
 case 129:
  if (v->id.proto != IPPROTO_AH)
   return 1;
  else
   return 3;





 case 128:
 case 132:
  return 4;
 }
 return 5;
}
