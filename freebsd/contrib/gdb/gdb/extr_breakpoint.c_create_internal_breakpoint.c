
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {int pc; int section; } ;
struct breakpoint {int disposition; int number; } ;
typedef enum bptype { ____Placeholder_bptype } bptype ;
typedef int CORE_ADDR ;


 int disp_donttouch ;
 int find_pc_overlay (int ) ;
 int init_sal (struct symtab_and_line*) ;
 struct breakpoint* set_raw_breakpoint (struct symtab_and_line,int) ;

__attribute__((used)) static struct breakpoint *
create_internal_breakpoint (CORE_ADDR address, enum bptype type)
{
  static int internal_breakpoint_number = -1;
  struct symtab_and_line sal;
  struct breakpoint *b;

  init_sal (&sal);

  sal.pc = address;
  sal.section = find_pc_overlay (sal.pc);

  b = set_raw_breakpoint (sal, type);
  b->number = internal_breakpoint_number--;
  b->disposition = disp_donttouch;

  return b;
}
