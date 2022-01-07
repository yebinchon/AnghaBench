
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gr_used_mask; } ;


 scalar_t__* call_used_regs ;
 TYPE_1__ current_frame_info ;
 int * fixed_regs ;
 int gcc_unreachable () ;
 int * global_regs ;
 int last_scratch_gr_reg ;

__attribute__((used)) static int
next_scratch_gr_reg (void)
{
  int i, regno;

  for (i = 0; i < 32; ++i)
    {
      regno = (last_scratch_gr_reg + i + 1) & 31;
      if (call_used_regs[regno]
   && ! fixed_regs[regno]
   && ! global_regs[regno]
   && ((current_frame_info.gr_used_mask >> regno) & 1) == 0)
 {
   last_scratch_gr_reg = regno;
   return regno;
 }
    }


  gcc_unreachable ();
}
