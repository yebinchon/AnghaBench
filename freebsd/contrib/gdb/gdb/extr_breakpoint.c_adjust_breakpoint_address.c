
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int breakpoint_adjustment_warning (scalar_t__,scalar_t__,int ,int ) ;
 int current_gdbarch ;
 scalar_t__ gdbarch_adjust_breakpoint_address (int ,scalar_t__) ;
 int gdbarch_adjust_breakpoint_address_p (int ) ;

__attribute__((used)) static CORE_ADDR
adjust_breakpoint_address (CORE_ADDR bpaddr)
{
  if (!gdbarch_adjust_breakpoint_address_p (current_gdbarch))
    {

      return bpaddr;
    }
  else
    {
      CORE_ADDR adjusted_bpaddr;



      adjusted_bpaddr = gdbarch_adjust_breakpoint_address (current_gdbarch,
                                                           bpaddr);




      if (adjusted_bpaddr != bpaddr)
 breakpoint_adjustment_warning (bpaddr, adjusted_bpaddr, 0, 0);

      return adjusted_bpaddr;
    }
}
