
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* loc_chain; } ;
typedef TYPE_1__ variable_part ;
typedef TYPE_2__* location_chain ;
struct TYPE_6__ {int loc; struct TYPE_6__* next; } ;


 scalar_t__ REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ rtx_equal_p (int ,int ) ;

__attribute__((used)) static bool
variable_part_different_p (variable_part *vp1, variable_part *vp2)
{
  location_chain lc1, lc2;

  for (lc1 = vp1->loc_chain; lc1; lc1 = lc1->next)
    {
      for (lc2 = vp2->loc_chain; lc2; lc2 = lc2->next)
 {
   if (REG_P (lc1->loc) && REG_P (lc2->loc))
     {
       if (REGNO (lc1->loc) == REGNO (lc2->loc))
  break;
     }
   if (rtx_equal_p (lc1->loc, lc2->loc))
     break;
 }
      if (!lc2)
 return 1;
    }
  return 0;
}
