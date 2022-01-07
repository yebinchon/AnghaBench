
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;
typedef int CORE_ADDR ;


 int default_breakpoint_address ;
 int default_breakpoint_line ;
 struct symtab* default_breakpoint_symtab ;
 int default_breakpoint_valid ;

void
set_default_breakpoint (int valid, CORE_ADDR addr, struct symtab *symtab,
   int line)
{
  default_breakpoint_valid = valid;
  default_breakpoint_address = addr;
  default_breakpoint_symtab = symtab;
  default_breakpoint_line = line;
}
