
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ addressprint ;
 int fprintf_filtered (struct ui_file*,char*) ;
 int print_address_numeric (scalar_t__,int,struct ui_file*) ;
 int print_address_symbolic (scalar_t__,struct ui_file*,int,char*) ;

void
print_address_demangle (CORE_ADDR addr, struct ui_file *stream, int do_demangle)
{
  if (addr == 0)
    {
      fprintf_filtered (stream, "0");
    }
  else if (addressprint)
    {
      print_address_numeric (addr, 1, stream);
      print_address_symbolic (addr, stream, do_demangle, " ");
    }
  else
    {
      print_address_symbolic (addr, stream, do_demangle, "");
    }
}
