
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
typedef int CORE_ADDR ;


 int asm_demangle ;
 int print_address_numeric (int ,int,struct ui_file*) ;
 int print_address_symbolic (int ,struct ui_file*,int ,char*) ;

void
print_address (CORE_ADDR addr, struct ui_file *stream)
{
  print_address_numeric (addr, 1, stream);
  print_address_symbolic (addr, stream, asm_demangle, " ");
}
