
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ii_type; int ii_owner; int ii_name; } ;
typedef TYPE_1__ iidesc_t ;
struct TYPE_4__ {TYPE_1__* iim_ret; int * iim_file; int iim_bind; int iim_fuzzy; int * iim_name; } ;
typedef TYPE_2__ iidesc_match_t ;






 int STB_GLOBAL ;
 int STB_LOCAL ;
 scalar_t__ streq (int ,int *) ;

__attribute__((used)) static int
matching_iidesc(void *arg1, void *arg2)
{
 iidesc_t *iidesc = arg1;
 iidesc_match_t *match = arg2;
 if (streq(iidesc->ii_name, match->iim_name) == 0)
  return (0);

 switch (iidesc->ii_type) {
 case 131:
 case 130:
  if (match->iim_bind == STB_GLOBAL) {
   match->iim_ret = iidesc;
   return (-1);
  } else if (match->iim_fuzzy && match->iim_ret == ((void*)0)) {
   match->iim_ret = iidesc;

   return (0);
  }
  break;
 case 129:
 case 128:
  if (match->iim_bind == STB_LOCAL &&
      match->iim_file != ((void*)0) &&
      streq(iidesc->ii_owner, match->iim_file)) {
   match->iim_ret = iidesc;
   return (-1);
  }
  break;
 default:
  break;
 }
 return (0);
}
