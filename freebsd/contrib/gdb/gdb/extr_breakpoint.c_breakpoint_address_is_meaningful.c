
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct breakpoint {int type; } ;
typedef enum bptype { ____Placeholder_bptype } bptype ;


 int bp_access_watchpoint ;
 int bp_catch_exec ;
 int bp_catch_fork ;
 int bp_catch_vfork ;
 int bp_hardware_watchpoint ;
 int bp_longjmp_resume ;
 int bp_read_watchpoint ;
 int bp_watchpoint ;

__attribute__((used)) static int
breakpoint_address_is_meaningful (struct breakpoint *bpt)
{
  enum bptype type = bpt->type;

  return (type != bp_watchpoint
   && type != bp_hardware_watchpoint
   && type != bp_read_watchpoint
   && type != bp_access_watchpoint
   && type != bp_catch_exec
   && type != bp_longjmp_resume
   && type != bp_catch_fork
   && type != bp_catch_vfork);
}
