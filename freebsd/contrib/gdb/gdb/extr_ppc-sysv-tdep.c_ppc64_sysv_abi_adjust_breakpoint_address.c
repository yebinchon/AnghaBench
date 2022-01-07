
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
typedef int CORE_ADDR ;


 int current_target ;
 int gdbarch_convert_from_func_ptr_addr (struct gdbarch*,int ,int *) ;

CORE_ADDR
ppc64_sysv_abi_adjust_breakpoint_address (struct gdbarch *gdbarch,
       CORE_ADDR bpaddr)
{
  return gdbarch_convert_from_func_ptr_addr (gdbarch, bpaddr, &current_target);
}
