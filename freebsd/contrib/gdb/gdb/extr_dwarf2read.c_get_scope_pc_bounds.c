
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_cu {int dummy; } ;
struct die_info {int tag; struct die_info* child; } ;
typedef int CORE_ADDR ;




 scalar_t__ dwarf2_get_pc_bounds (struct die_info*,int *,int *,struct dwarf2_cu*) ;
 int max (int ,int ) ;
 int min (int ,int ) ;
 struct die_info* sibling_die (struct die_info*) ;

__attribute__((used)) static void
get_scope_pc_bounds (struct die_info *die,
       CORE_ADDR *lowpc, CORE_ADDR *highpc,
       struct dwarf2_cu *cu)
{
  CORE_ADDR best_low = (CORE_ADDR) -1;
  CORE_ADDR best_high = (CORE_ADDR) 0;
  CORE_ADDR current_low, current_high;

  if (dwarf2_get_pc_bounds (die, &current_low, &current_high, cu))
    {
      best_low = current_low;
      best_high = current_high;
    }
  else
    {
      struct die_info *child = die->child;

      while (child && child->tag)
 {
   switch (child->tag) {
   case 128:
     if (dwarf2_get_pc_bounds (child, &current_low, &current_high, cu))
       {
  best_low = min (best_low, current_low);
  best_high = max (best_high, current_high);
       }
     break;
   case 129:
     get_scope_pc_bounds (child, &current_low, &current_high, cu);

     if (current_low != ((CORE_ADDR) -1))
       {
  best_low = min (best_low, current_low);
  best_high = max (best_high, current_high);
       }
     break;
   default:

     break;
   }

   child = sibling_die (child);
 }
    }

  *lowpc = best_low;
  *highpc = best_high;
}
