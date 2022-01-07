
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gr_used_mask; int n_local_regs; } ;


 int GR_REG (int) ;
 int LOC_REG (int ) ;
 scalar_t__* call_used_regs ;
 TYPE_1__ current_frame_info ;
 scalar_t__ current_function_is_leaf ;
 int * fixed_regs ;
 int frame_pointer_needed ;
 int * global_regs ;
 int * regs_ever_live ;

__attribute__((used)) static int
find_gr_spill (int try_locals)
{
  int regno;



  if (current_function_is_leaf)
    {
      for (regno = GR_REG (1); regno <= GR_REG (31); regno++)
 if (! regs_ever_live[regno]
     && call_used_regs[regno]
     && ! fixed_regs[regno]
     && ! global_regs[regno]
     && ((current_frame_info.gr_used_mask >> regno) & 1) == 0)
   {
     current_frame_info.gr_used_mask |= 1 << regno;
     return regno;
   }
    }

  if (try_locals)
    {
      regno = current_frame_info.n_local_regs;



      if (regno < (80 - frame_pointer_needed))
 {
   current_frame_info.n_local_regs = regno + 1;
   return LOC_REG (0) + regno;
 }
    }


  return 0;
}
